import { Injectable, UnauthorizedException } from "@nestjs/common";
import { PassportStrategy } from '@nestjs/passport';
import { ExtractJwt, Strategy } from 'passport-jwt';
import { IAuthen } from "../interfaces/authen.interface";
import { InjectRepository } from "@nestjs/typeorm";
import { EUser } from "../models/entitys/user.entity";
import { Repository } from "typeorm";
import { IAccount } from "../interfaces/app.interface";
import { sign } from "jsonwebtoken";

@Injectable()
export class JwtAuthenService implements IAuthen {

    constructor(
        @InjectRepository(EUser)
        private readonly userRepository: Repository<EUser>
    ) { }

    secretKey: string = "Hitman"

    async generateAccessToken(user: IAccount) {
        const payload = { cid: user.cid }
        return sign(payload, this.secretKey, { expiresIn: 60 * 60 });
    }

    //ยืนยันผู้ใช้เข้าสู่ระบบ
    async validateUser({cid}): Promise<IAccount> {
        //console.log(cid);
        try {
            const user = await this.userRepository
                .createQueryBuilder('user')
                .select()
                .where("user.cid = :cid", { cid: cid })
                .getOne();
            //console.log(member);
            return user;
        } catch (ex) { 
            console.log(ex);
        }
        return null
    }

}


@Injectable()
export class JwtAuthenStrategy extends PassportStrategy(Strategy) {
    constructor(private readonly authService: JwtAuthenService) {
        super({
            jwtFromRequest: ExtractJwt.fromAuthHeaderAsBearerToken(),
            secretOrKey: authService.secretKey,
        });
    }

    async validate(payload: { cid: string }) {
        const user = await this.authService.validateUser(payload);
        if (!user) {
            throw new UnauthorizedException('กรุณาล็อกอินใหม่');
        }
        return user;
    }
}