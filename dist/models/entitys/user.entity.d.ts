import { IChangePassword, IAccount } from './../../interfaces/app.interface';
import { EResponsible } from "./responsible.entity";
import { EHospital } from "./hospital.entity";
import { EPosition } from "./position.entity";
import { IRegister, ILogin } from "../../interfaces/app.interface";
export declare class EUser {
    id_user: string;
    username: string;
    password: string;
    firstname: string;
    lastname: string;
    cid: string;
    hoscode: string;
    id_position: number;
    flag_active: boolean;
    date_created: Date;
    date_updated: Date;
    role: number;
    responsibles: EResponsible[];
    hospital: EHospital;
    position: EPosition;
}
export declare class RegisterBody implements IRegister {
    cid: any;
    username: string;
    id_position: number;
    hoscode: string;
    firstname: string;
    lastname: string;
    password: string;
    cpassword: string;
}
export declare class LoginBody implements ILogin {
    username: string;
    password: string;
}
export declare class ChangePasswordBody implements IChangePassword {
    old_pass: string;
    new_pass: string;
    cnew_pass: string;
}
export declare class AccountBody implements IAccount {
    cid: any;
    username: string;
    id_position: number;
    hoscode: string;
    firstname: string;
    lastname: string;
    role?: number;
    flag_active?: boolean;
    id_user?: any;
}
export declare class ParamUser {
    id_user?: any;
}
