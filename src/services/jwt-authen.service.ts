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
        const payload = { username: user.username }
        return sign(payload, this.secretKey, { expiresIn: 60 * 60 });
    }

    //ยืนยันผู้ใช้เข้าสู่ระบบ
    async validateUser({username}): Promise<IAccount> {
        //console.log(cid);
        try {
            const user = await this.userRepository
                .createQueryBuilder('user')
                .select([
                    "user.username",
                    "user.password",
                    "user.firstname",
                    "user.lastname",
                    "user.cid",
                    "user.hoscode",
                    "user.role",
                    "user.id_user",
                    "position.position"])
                .leftJoin("user.position","position")
                .where("user.username = :username", { username: username })
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

    async validate(payload: { username: string }) {
        const user = await this.authService.validateUser(payload);
        if (!user) {
            throw new UnauthorizedException('กรุณาล็อกอินใหม่');
        }
        return user;
    }
}