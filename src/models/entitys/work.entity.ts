import { Entity, Column, Index, PrimaryGeneratedColumn, OneToMany } from "typeorm";
import { EResponsible } from "./responsible.entity";
import { IsNotEmpty, IsNumberString } from "class-validator";

@Entity('cwork_responsible')
export class EWork {

    @PrimaryGeneratedColumn()
    @Index("idx1")
    id_work?: number;

    @Column('text')
    work: string;

    @Column()
    active: boolean;

    @OneToMany(type => EResponsible, responsible => responsible.work)
    responsibles: EResponsible[];

}


export class ParamDeleteWork {
    @IsNotEmpty()
    @IsNumberString()
    id_work?: any;
}


export class ParamWork {

    id_work?: any;
    @IsNotEmpty()
    work: string;
    active: boolean;
}
