import { Entity, Column, Index, PrimaryGeneratedColumn, OneToMany } from "typeorm";
import { EUser } from "./user.entity";
import { IsNotEmpty, IsNumberString } from "class-validator";

@Entity('cposition_responsible')
export class EPosition {

    @PrimaryGeneratedColumn()
    id_position?: number;

    @Column('text')
    position: string;

    @Column()
    active: boolean;

    @OneToMany(type => EUser, user => user.position)
    users: EUser[];

}


export class ParamDeletePosition {
    @IsNotEmpty()
    @IsNumberString()
    id_position?: any;
}


export class ParamPosition {

    id_position?: any;
    @IsNotEmpty()
    position: string;
    active?: boolean;
}
