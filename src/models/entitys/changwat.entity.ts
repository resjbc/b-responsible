import { Entity, Column, PrimaryColumn, OneToMany } from "typeorm";
import { EAmphur } from "./amphur.entity";

@Entity('cchangwat_responsible')
export class EChangwat {

    @PrimaryColumn('varchar', { length: "2" , nullable: false})
    changwatcode: string;

    @Column({ length: "255" , nullable: true})
    changwatname: string;

    @Column({ length: "2" , nullable: true})
    zonecode: string;

    @OneToMany(type => EAmphur, amphur => amphur.changwat)
    amphurs: EAmphur[];

}
