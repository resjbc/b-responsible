import { Entity, Column, Index, PrimaryGeneratedColumn, OneToMany } from "typeorm";
import { EResponsible } from "./responsible.entity";

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
