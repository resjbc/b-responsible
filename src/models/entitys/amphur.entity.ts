import { Entity, Column, PrimaryColumn, Index } from "typeorm";

@Entity('campur_responsible')
export class EAmphur {

    @PrimaryColumn('varchar', { length: "2" , nullable: false})
    ampurcode: string;

    @PrimaryColumn('varchar', { length: "4" , nullable: false})
    @Index("idx1")
    ampurcodefull: string;

    @PrimaryColumn('varchar', { length: "2" , nullable: false})
    changwatcode: string;

    @Column({ length: "255" , nullable: true})
    ampurname: string;

    @Column({ length: "1" , nullable: true})
    flag_status: string;

}
