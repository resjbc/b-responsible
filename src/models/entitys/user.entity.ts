import { Entity, Column, PrimaryColumn, Index, PrimaryGeneratedColumn, ManyToMany, OneToMany, ManyToOne, JoinColumn } from "typeorm";
import { EVillage } from "./village.entity";
import { EResponsible } from "./responsible.entity";
import { EHospital } from "./hospital.entity";

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

    @Column({ length: "2", nullable: true })
    flag_active: string;

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
}
