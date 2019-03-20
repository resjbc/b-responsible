export interface IAccount {
    id_user?: string;
    username?: string;
    password?: string;
    firstname: string;
    lastname: string;
    cid: string;
    hoscode: string;
    id_position: number;
    flag_active?: boolean;
    date_created?: Date;
    date_updated?: Date;
    role?: number;
}
export interface IRegister {
    firstname: string;
    lastname: string;
    cid: string;
    username: string;
    password: string;
    id_position: number;
    cpassword: string;
    hoscode: string;
}
export interface ILogin {
    username: string;
    password: string;
}
export declare enum RoleAccount {
    Member = 1,
    Employee = 2,
    Admin = 3
}
export interface IChangePassword {
    old_pass: string;
    new_pass: string;
    cnew_pass: string;
}
export interface IResponsible {
    id_responsible?: any;
    r_id_user?: any;
    r_villagecode?: string;
    r_villagecodefull?: string;
    address?: string;
    id_work?: number;
    date_created?: Date;
    date_updated?: Date;
}
