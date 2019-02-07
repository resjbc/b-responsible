import { Entity, Column, Index, PrimaryGeneratedColumn, OneToMany } from "typeorm";
import { EUser } from "./user.entity";

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
