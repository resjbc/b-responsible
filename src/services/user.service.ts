import { Injectable, BadRequestException } from "@nestjs/common";
import { InjectRepository } from "@nestjs/typeorm";
import { Repository } from "typeorm";
import { EUser } from "../models/entitys/user.entity";
import { EResponsible } from "../models/entitys/responsible.entity";
import { IAccount, RoleAccount } from "../interfaces/app.interface";

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
      .select().where("role != 3").orderBy("user.id_user", "DESC").getMany();

    if (!users) throw new BadRequestException('ไม่มีบุคคลในระบบ');
    return users;
  }

  async getUser(user: any) {
    const users = await this.userRepository.createQueryBuilder('user')
      .select()
      .where("role != 3")
      .andWhere("user.id_user = :id_user", { id_user: user.id_user }).getOne();

    if (!users) throw new BadRequestException('ไม่มีบุคคลในระบบ');
    return users;
  }

  async getResponcibles() {
    const user_responcibles = await this.userRepository.createQueryBuilder('user')
      .select([
        "user.firstname",
        "user.lastname",
        "user.cid",
        "user.hoscode",
        "user.role",
        "responsible.r_id_user",
        "responsible.address",
        "work.work",
        "village.villagename",
        "tambon.tambonname",
        "amphur.ampurname",
        "changwat.changwatname",
        "hospital.hosname",
        "position.position"
      ])
      .leftJoin("user.responsibles", "responsible")
      .leftJoin("user.position", "position")
      .leftJoin("user.hospital", "hospital")
      .leftJoin("responsible.work", "work")
      .leftJoin("responsible.village", "village")
      .leftJoin("village.tambon", "tambon")
      .leftJoin("tambon.amphur", "amphur")
      .leftJoin("amphur.changwat", "changwat")
      .getMany();

    return user_responcibles;
  }

  async deleteUser(user: any) {
    return await this.userRepository.delete(user)
      .catch(err => { throw new BadRequestException(err) });;
  }

  async addUser(body: IAccount) {
    const count = await this.userRepository.count({ username: body.username });
    if (count > 0) throw new BadRequestException('มี Username นี้ในระบบแล้ว');
    const count_ = await this.userRepository.count({ cid: body.cid });
    if (count_ > 0) throw new BadRequestException('มีหมายเลขบัตรประชาชนนี้ในระบบแล้ว');


    let model: IAccount = body;
    model.role = RoleAccount.Member;
    model.flag_active = true
    model.date_created = new Date();
    model.date_updated = new Date();
    const modelItem = await this.userRepository.save(model);
    modelItem.password = '';
    return modelItem;
  }

  async updateUser(body: IAccount) {

    if (!body.id_user) throw new BadRequestException('ตรวจสอบข้อมูล');

    const memberItem = await this.userRepository.findOne({ cid: body.cid });
    if (memberItem && memberItem.cid === body.cid && memberItem.id_user != body.id_user) throw new BadRequestException('มีหมายเลขบัตรประชาชนนี้ในระบบแล้ว');

    const memberItem_ = await this.userRepository.findOne({ username: body.username });
    if (memberItem_ && memberItem_.username === body.username && memberItem_.id_user != body.id_user) throw new BadRequestException('มี Username นี้ในระบบแล้ว');


    let model: IAccount = body;
    model.date_updated = new Date();
    const modelItem = await this.userRepository.update({ id_user: model.id_user }, model);
    return modelItem;
  }

  async firstStart(user) {
    const user_ = await this.userRepository.findOne({ cid: user.cid });
    if (!user_) await this.userRepository.save(user);
  }
}
