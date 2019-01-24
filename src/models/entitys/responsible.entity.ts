import { Entity, Column, PrimaryColumn, Index, PrimaryGeneratedColumn } from "typeorm";

@Entity('responsible_responsible')
export class EResponsible {

    @PrimaryColumn()
    id_user: string;

    @PrimaryColumn()
    villagecode: string;

    @PrimaryColumn()
    id_work: number;

    @Column()
    date_created: Date;

    @Column()
    date_updated: Date;
}
