import { Entity, Column, PrimaryColumn } from "typeorm";

@Entity('cchangwat_responsible')
export class EChangwat {

    @PrimaryColumn('varchar', { length: "2" , nullable: false})
    changwatcode: string;

    @Column({ length: "255" , nullable: true})
    changwatname: string;

    @Column({ length: "2" , nullable: true})
    zonecode: string;

}
