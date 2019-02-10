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




}