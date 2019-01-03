import { Entity, Column, PrimaryColumn, Index } from "typeorm";

@Entity('ctambon_responsible')
export class ETambon {

    @PrimaryColumn('varchar', { length: "2" , nullable: false})
    tamboncode: string;

    @PrimaryColumn('varchar', { length: "6" , nullable: false})
    @Index("idx1")
    tamboncodefull: string;

    @PrimaryColumn('varchar', { length: "4" , nullable: false})
    ampurcode: string;

    @PrimaryColumn('varchar', { length: "2" , nullable: false})
    changwatcode: string;

    @Column({ length: "255" , nullable: true})
    tambonname: string;

    @Column({ length: "2" , nullable: true})
    flag_status: string;

}
