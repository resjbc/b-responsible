import { IChangePassword, IAccount } from './../../interfaces/app.interface';
import { Entity, Column, PrimaryColumn, Index, PrimaryGeneratedColumn, ManyToMany, OneToMany, ManyToOne, JoinColumn } from "typeorm";
import { EVillage } from "./village.entity";
import { EResponsible } from "./responsible.entity";
import { EHospital } from "./hospital.entity";
import { EPosition } from "./position.entity";
import { IRegister, ILogin } from "../../interfaces/app.interface";
import { IsNotEmpty, Matches, IsNumberString } from "class-validator";
import { IsComparePassword } from "../../pipes/validation.pipe";

@Entity('user_responsible')
export class EUser {

    @PrimaryGeneratedColumn()
    id_user: string;

    @Column('varchar', { length: "255", nullable: false })
    username: string;

    @Column('varchar', { length: "255", nullable: false })
    password: string;

    @Column({ length: "255", nullable: true })
    firstname: string;

    @Column({ length: "255", nullable: true })
    lastname: string;

    @Column({ length: "255", nullable: true })
    cid: string;

    @Column({ length: "5", nullable: true })
    hoscode: string;

    @Column({ nullable: true })
    id_position: number;

    @Column({ nullable: true })
    flag_active: boolean;

    @Column()
    date_created: Date;

    @Column()
    date_updated: Date;

    @Column()
    role: number;

    @OneToMany(type => EResponsible, responsible => responsible.user)
    responsibles: EResponsible[];

    @ManyToOne(type => EHospital, hospital => hospital.users)
    @JoinColumn({ name: 'hoscode', referencedColumnName: "hoscode" })
    hospital: EHospital;


    @ManyToOne(type => EPosition, position => position.users)
    @JoinColumn({ name: 'id_position', referencedColumnName: "id_position" })
    position: EPosition;
}


export class RegisterBody implements IRegister {

    @Matches(/^[0-9]{13,13}$/, { message: "ตรวจสอบ หมายเลขบัตรประชาชน" })
    cid: any;

    @IsNotEmpty({ message: 'กรุณากรอก Username' })
    username: string;

    @IsNotEmpty()
    id_position: number;


    @IsNotEmpty()
    @Matches(/^[0-9]{5,5}$/)
    hoscode: string;
    @IsNotEmpty() firstname: string;
    @IsNotEmpty() lastname: string;


    @IsNotEmpty()
    @Matches(/^[A-z0-9]{6,15}$/)
    password: string;

    @IsNotEmpty()
    @IsComparePassword('password')
    cpassword: string;

}


export class LoginBody implements ILogin {
    @IsNotEmpty()
    username: string;
    @IsNotEmpty()
    password: string;
}

export class ChangePasswordBody implements IChangePassword {
    @IsNotEmpty()
    old_pass: string;
    @IsNotEmpty()
    @Matches(/^[A-z0-9]{6,15}$/)
    new_pass: string;
    @IsNotEmpty()
    @IsComparePassword('new_pass')
    cnew_pass: string;
}


export class AccountBody implements IAccount {

    @Matches(/^[0-9]{13,13}$/, { message: "ตรวจสอบ หมายเลขบัตรประชาชน" })
    cid: any;
    @IsNotEmpty({ message: 'กรุณากรอก Username' })
    username: string;
    @IsNotEmpty()
    id_position: number;
    @IsNotEmpty()
    @Matches(/^[0-9]{5,5}$/)
    hoscode: string;
    @IsNotEmpty()
    firstname: string;
    @IsNotEmpty()
    lastname: string;
    role?: number;
    flag_active?: boolean;
    id_user?: any;
}

export class ParamUser {
    @IsNotEmpty()
    @IsNumberString()
    id_user?: any;
}



