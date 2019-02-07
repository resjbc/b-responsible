// ข้อมูลสมาชิก
export interface IAccount {
   
    id_user?: string;
    username?: string;
    password?: string;
    firstname: string;
    lastname: string;
    cid: string;
    hoscode: string;
    id_position: number;
    flag_active: boolean;
    date_created: Date;
    date_updated: Date;
    role: number;

}

/*// ลงทะเบียน
export interface IRegister {
    firstname: string;
    lastname: string;
    cid: string;
    password: string;
    cpassword: string;
}*/

// เข้าสู่ระบบ
export interface ILogin {
    username: string;
    password: string;
}

// สิทธ์ผู้ใช้งาน
export enum RoleAccount {
    Member = 1,
    Employee,
    Admin
}