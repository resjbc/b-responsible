import { Injectable, BadRequestException } from "@nestjs/common";
import { InjectRepository } from "@nestjs/typeorm";
import { Repository } from "typeorm";
import { EChangwat } from "../models/entitys/changwat.entity";
import { EAmphur } from "../models/entitys/amphur.entity";
import { ETambon } from "../models/entitys/tambon.entity";
import { EVillage } from "../models/entitys/village.entity";
import { EHospital } from "../models/entitys/hospital.entity";
import { EPosition } from "../models/entitys/position.entity";


@Injectable()
export class ListDetailService {
    constructor(
        @InjectRepository(EChangwat)
        private readonly changwatRepository: Repository<EChangwat>,
        @InjectRepository(EAmphur)
        private readonly amphurRepository: Repository<EAmphur>,
        @InjectRepository(ETambon)
        private readonly tambonRepository: Repository<ETambon>,
        @InjectRepository(EVillage)
        private readonly villageRepository: Repository<EVillage>,
        @InjectRepository(EHospital)
        private readonly hospitalRepository: Repository<EHospital>,
        @InjectRepository(EPosition)
        private readonly positionRepository: Repository<EPosition>,
    ) { }

    async getAmphurs() {
        const amphurs = await this.amphurRepository.createQueryBuilder('amphur')
            .select().getMany();

        return amphurs;
    }

    async getTambons(amphurcode: any) {

        const tambons = await this.tambonRepository.createQueryBuilder('tambon')
            .select()
            .where("tambon.ampurcode = :amphurcode", { amphurcode: amphurcode })
            .andWhere("tambon.flag_status = 0")
            .getMany();

        return tambons;
    }

    async getVillages(tamboncodefull: any) {

        const villages = await this.villageRepository.createQueryBuilder('village')
            .select()
            .where("village.tamboncode = :tamboncodefull", { tamboncodefull: tamboncodefull })
            .andWhere("village.flag_status = 0")
            .getMany();

        return villages;
    }

    async getHospitals(amphurcode: any, changwatcode: any = "94") {


        const hospitals = await this.hospitalRepository.createQueryBuilder('hospital')
            .select()
            .where("hospital.provcode = :changwatcode", { changwatcode: changwatcode })
            .andWhere("hospital.distcode = :amphurcode", { amphurcode: amphurcode })
            .getMany();

        return hospitals;
    }

    async getPositions() {
        const positions = await this.positionRepository.createQueryBuilder('position')
            .select().getMany();

        return positions;
    }
}
