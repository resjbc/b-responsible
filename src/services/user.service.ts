import { Injectable, BadRequestException } from "@nestjs/common";
import { InjectRepository } from "@nestjs/typeorm";
import { Repository } from "typeorm";
import { EUser } from "../models/entitys/user.entity";
import { EResponsible } from "../models/entitys/responsible.entity";

@Injectable()
export class UserService {
  constructor(
    @InjectRepository(EUser)
    private readonly userRepository: Repository<EUser>,
    @InjectRepository(EResponsible)
    private readonly responcibleRepository: Repository<EResponsible>,
  ) { }

  async getUsers() {
    const users = await this.userRepository.createQueryBuilder('user')
      .select().where("role != 4").orderBy("user.id_user", "DESC").getMany();

    if (!users) throw new BadRequestException('ไม่มีบุคคลในระบบ');
    return users;
  }

  async getResponcible() {
    const user_responcibles = await this.userRepository.createQueryBuilder('user')
      .select([
          "user.firstname",
          "user.lastname",
          "user.cid",
          "user.hoscode",
          "user.role",
          "responsible.r_id_user",
          "work.work",
          "village.villagename",
          "tambon.tambonname",
          "amphur.ampurname",
          "changwat.changwatname",
          "hospital.hosname"
          ])
      .leftJoin("user.responsibles","responsible")
      .leftJoin("user.hospital","hospital")
      .leftJoin("responsible.work","work")
      .leftJoin("responsible.village","village")
      .leftJoin("village.tambon","tambon")
      .leftJoin("tambon.amphur","amphur")
      .leftJoin("amphur.changwat","changwat")
      .getMany();

    return user_responcibles;
  }
}
