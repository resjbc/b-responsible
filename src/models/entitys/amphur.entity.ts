import { Entity, Column, PrimaryColumn, Index, OneToMany, ManyToOne, JoinColumn } from "typeorm";
import { EChangwat } from "./changwat.entity";
import { ETambon } from "./tambon.entity";

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

    @ManyToOne(type => EChangwat, changwat => changwat.amphurs)
    @JoinColumn({ name: 'changwatcode' })
    changwat: EChangwat;

    @OneToMany(type => ETambon, tombon => tombon.amphur)
    tambons: ETambon[];


}
