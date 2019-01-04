import { Entity, Column, PrimaryColumn, Index, PrimaryGeneratedColumn } from "typeorm";

@Entity('user_responsible')
export class EUser {

    @PrimaryGeneratedColumn()
    id_user: string;

    @Column('varchar', { length: "255" , nullable: false})
    username: string;

    @Column('varchar', { length: "255" , nullable: false})
    password: string;

    @Column({ length: "255" , nullable: true})
    firstname: string;

    @Column({ length: "255" , nullable: true})
    lastname: string;

    @Column({ length: "255" , nullable: true})
    cid: string;

    @Column({ length: "5" , nullable: true})
    hoscode: string;

    @Column({ length: "2" , nullable: true})
    flag_active: string;

    @Column()
    date_created: Date;

    @Column()
    date_updated: Date;

}
