import { Entity, Column, PrimaryColumn, Index, PrimaryGeneratedColumn } from "typeorm";

@Entity('responsible_responsible')
export class EResponsible {

    @PrimaryColumn()
    id_user: string;

    @PrimaryColumn()
    villagecode: string;

    @PrimaryColumn()
    id_work: number;

    @Column('varchar', { length: "255" , nullable: false})
    username: string;

    @Column('varchar', { length: "255" , nullable: false})
    password: string;

}
