import { Injectable, BadRequestException } from "@nestjs/common";
import { Repository } from "typeorm";
import { InjectRepository } from "@nestjs/typeorm";
import { EUser } from "../models/entitys/user.entity";
import { IChangePassword, IAccount } from "../interfaces/app.interface";



@Injectable()
export class AccountService {
    constructor(
        @InjectRepository(EUser) private readonly userRepository: Repository<EUser>
    ) { }

    async onChangePassword(id_user: any, body: IChangePassword) {
        const memberItem = await this.userRepository.findOne({ id_user: id_user });

        if (body.old_pass != memberItem.password)
            throw new BadRequestException('รหัสผ่านเดิมไม่ถูกต้อง');

        const updated = await this.userRepository.update({ id_user: id_user }, <IAccount>{
            password: body.new_pass
        });

        return updated;
    }

    async onUpdateAccount(id_user: any, body: IAccount) {

        const memberItem = await this.userRepository.findOne({ cid: body.cid });
        if (memberItem && memberItem.cid === body.cid && memberItem.id_user !== id_user) throw new BadRequestException('มีหมายเลขบัตรประชาชนนี้ในระบบแล้ว');

        const memberItem_ = await this.userRepository.findOne({ username: body.username });
        if (memberItem_ && memberItem_.username === body.username && memberItem_.id_user !== id_user) throw new BadRequestException('มี Username นี้ในระบบแล้ว');

        body.date_updated = new Date();
        const updated = await this.userRepository.update({ id_user: id_user }, <IAccount>body);

        return updated;
    }






}