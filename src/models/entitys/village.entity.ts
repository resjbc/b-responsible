import { Entity, Column, PrimaryColumn, ManyToMany, JoinTable, JoinColumn, OneToMany, Index, ManyToOne } from "typeorm";
import { EUser } from "./user.entity";
import { EResponsible } from "./responsible.entity";
import { ETambon } from "./tambon.entity";

@Entity('cvillage_responsible')
export class EVillage {

    @PrimaryColumn('varchar', { length: "2", nullable: false })
    villagecode: string;

    @PrimaryColumn('varchar', { length: "8", nullable: false })
    villagecodefull: string;

    @PrimaryColumn('varchar', { length: "6", nullable: false })
    tamboncode: string;

    @PrimaryColumn('varchar', { length: "4", nullable: false })
    ampurcode: string;

    @PrimaryColumn('varchar', { length: "2", nullable: false })
    changwatcode: string;

    @Column({ length: "255", nullable: true })
    villagename: string;

    @Column({ length: "1", nullable: true })
    flag_status: string;

    @OneToMany(type => EResponsible, responsible => responsible.village)
    responsibles: EResponsible[];

    @ManyToOne(type => ETambon, tambon => tambon.villages)
    @JoinColumn({ name: 'tamboncode' ,referencedColumnName: 'tamboncodefull'})
    tambon: ETambon;
}
