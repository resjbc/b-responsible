import { Strategy } from 'passport-jwt';
import { IAuthen } from "../interfaces/authen.interface";
import { EUser } from "../models/entitys/user.entity";
import { Repository } from "typeorm";
import { IAccount } from "../interfaces/app.interface";
export declare class JwtAuthenService implements IAuthen {
    private readonly userRepository;
    constructor(userRepository: Repository<EUser>);
    secretKey: string;
    generateAccessToken(user: IAccount): Promise<string>;
    validateUser({ id_user }: {
        id_user: any;
    }): Promise<IAccount>;
}
declare const JwtAuthenStrategy_base: new (...args: any[]) => typeof Strategy;
export declare class JwtAuthenStrategy extends JwtAuthenStrategy_base {
    private readonly authService;
    constructor(authService: JwtAuthenService);
    validate(payload: {
        id_user: string;
    }): Promise<IAccount>;
}
export {};
