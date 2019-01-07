import { Entity, Column, Index, PrimaryGeneratedColumn } from "typeorm";

@Entity('cwork_responsible')
export class EWork {

    @PrimaryGeneratedColumn()
    @Index("idx1")
    id_work?: number;

    @Column('text')
    work: string;

}
