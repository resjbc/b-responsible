import { IResponsible } from './../interfaces/app.interface';
import { Injectable, BadRequestException } from "@nestjs/common";
import { InjectRepository } from "@nestjs/typeorm";
import { EUser } from "../models/entitys/user.entity";
import { Repository } from "typeorm";
import { EResponsible, ParamResponsible } from "../models/entitys/responsible.entity";

@Injectable()
export class ResponsibleService {
    constructor(
        @InjectRepository(EUser) private readonly userRepository: Repository<EUser>,
        @InjectRepository(EResponsible) private readonly responsibleRepository: Repository<EResponsible>
    ) { }

    async getResponsible(user: any) {
        const user_responcibles = await this.responsibleRepository.createQueryBuilder('responsible')
            .select([
                "responsible.id_responsible",
                "responsible.r_id_user",
                "responsible.r_villagecode",
                "responsible.r_villagecodefull",
                "responsible.id_work",
                "work.work",
                "changwat.changwatname",
                "amphur.ampurname",
                "tambon.tambonname",
                "village.villagename",
                "responsible.address"
            ])
            .leftJoin("responsible.work", "work")
            .leftJoin("responsible.village", "village")
            .leftJoin("village.tambon", "tambon")
            .leftJoin("tambon.amphur", "amphur")
            .leftJoin("amphur.changwat", "changwat")
            .where("responsible.r_id_user = :r_id_user", { r_id_user: user.id_user })
            .getMany();

        return user_responcibles;
    }


    async getResponsible_search(code: any) {

        const user_responcibles = await this.responsibleRepository.createQueryBuilder('responsible')
            .select([
                "user.firstname",
                "user.lastname",
                "position.position",
                //"responsible.r_id_user",
                "responsible.r_villagecode",
                "responsible.r_villagecodefull",
                "responsible.id_work",
                "work.work",
                "changwat.changwatname",
                "amphur.ampurname",
                "tambon.tambonname",
                "village.villagename",
                "responsible.address"
            ])
            .leftJoin("responsible.work", "work")
            .leftJoin("responsible.user", "user")
            .leftJoin("user.position", "position")
            .leftJoin("responsible.village", "village")
            .leftJoin("village.tambon", "tambon")
            .leftJoin("tambon.amphur", "amphur")
            .leftJoin("amphur.changwat", "changwat")
            .where("responsible.r_villagecodefull like :r_villagecodefull", { r_villagecodefull: code.codefull+'%' })
            .getMany();
        return user_responcibles;
    }

    async addResponsible(body: any) {
        const count = await this.responsibleRepository.count({
            r_id_user: body.r_id_user,
            r_villagecode: body.r_villagecode,
            r_villagecodefull: body.r_villagecodefull,
            id_work: body.id_work,
            address: body.address,
        });
        if (count > 0) throw new BadRequestException('มีงานนี้ในระบบแล้ว');

        let model: IResponsible = body;

        model.date_created = new Date();
        model.date_updated = model.date_created
        const modelItem = await this.responsibleRepository.save(model);
        return modelItem;
    }

    async updateResponsible(body: any) {
        const responsible = await this.responsibleRepository.findOne({
            r_id_user: body.r_id_user,
            r_villagecode: body.r_villagecode,
            r_villagecodefull: body.r_villagecodefull,
            id_work: body.id_work,
            address: body.address,
        });

        if(responsible && responsible.id_responsible != body.id_responsible) throw new BadRequestException('มีงานนี้ในระบบแล้ว');

        //if (count > 0) throw new BadRequestException('มีงานนี้ในระบบแล้ว');

        let model: IResponsible = body;
        model.date_updated = new Date();
        const modelItem = await this.responsibleRepository.update(
            {
                id_responsible:body.id_responsible,
                r_id_user: body.r_id_user,
                r_villagecode: body.r_villagecode,
                r_villagecodefull: body.r_villagecodefull,
                id_work: body.id_work,
            },
            model);

        return modelItem;
    }


    async deleteResponsible(responsible: ParamResponsible) {
        console.log(responsible.id_responsible)
        return await this.responsibleRepository.delete({ id_responsible: responsible.id_responsible })
            .catch(err => { throw new BadRequestException(err) });;
    }
}