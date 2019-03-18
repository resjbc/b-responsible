import { Injectable, BadRequestException } from '@nestjs/common';
import { ILogin, IRegister, IAccount, RoleAccount } from '../interfaces/app.interface';
import { InjectRepository } from '@nestjs/typeorm';
import { EUser } from '../models/entitys/user.entity';
import { Repository } from 'typeorm';
import { verify } from 'jsonwebtoken';
import { JwtAuthenService } from './jwt-authen.service';

@Injectable()
export class AppService {
  constructor(
  @InjectRepository(EUser) private readonly userRepository: Repository<EUser>,
  private authenService: JwtAuthenService) { }

  root(): string {
    return 'API_RESPONCIBLE';
  }

  //ลงทะเบียน
  async onRegister(body: IRegister) {

    if (this.validateIdCard(body.cid)) throw new BadRequestException('ตรวจสอบหมายเลขบัตรประชาชน');

    const count = await this.userRepository.count({ username: body.username });
    if (count > 0) throw new BadRequestException('มี Username นี้ในระบบแล้ว');
    const count_ = await this.userRepository.count({ cid: body.cid });
    if (count_ > 0) throw new BadRequestException('มีหมายเลขบัตรประชาชนนี้ในระบบแล้ว');
    delete body.cpassword;

    let model: IAccount = body;
    model.role = RoleAccount.Member;
    model.flag_active = true
    model.date_created = new Date();
    model.date_updated = new Date();
    const modelItem = await this.userRepository.save(model);
    modelItem.password = '';
    return modelItem;
  }

  // เข้าสู่ระบบ
  async onLogin(body: ILogin) {
    const user = await this.userRepository
      .createQueryBuilder('user')
      .select()
      .where("user.username = :username", { username: body.username })
      .getOne();

    if (!user) throw new BadRequestException('ไม่มีผู้ใช้งานนี้ในระบบ');
    if (body.password !== user.password) throw new BadRequestException('ชื่อผู้ใช้งานหรือรหัสผ่านไม่ถูกต้อง');
    user.password = "";

    return { accessToken: await this.authenService.generateAccessToken(user) };
  }

  validateIdCard(cid: any) {
    let id = cid;
    let sum = 0;
    let total = 0;
    let digi = 13;

    for (let i = 0; i < 12; i++) {
      sum = sum + ((id[i]) * digi);
      digi--;
    }
    total = (11 - (sum % 11)) % 10;

    if (total != id[12]) return { cid: true };
    return false;
  }
}
