import { Entity, Column, PrimaryColumn, Index, PrimaryGeneratedColumn, ManyToMany, OneToMany, ManyToOne, JoinColumn } from "typeorm";
import { EVillage } from "./village.entity";
import { EResponsible } from "./responsible.entity";
import { EHospital } from "./hospital.entity";
import { EPosition } from "./position.entity";

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

    @Column({nullable: true })
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
