import { Entity, Column, PrimaryColumn, Index, PrimaryGeneratedColumn, ManyToMany, JoinColumn, JoinTable, OneToOne, OneToMany, ManyToOne } from "typeorm";
import { EUser } from "./user.entity";
import { EVillage } from "./village.entity";
import { EWork } from "./work.entity";
import { IResponsible } from "../../interfaces/app.interface";
import { IsNotEmpty, IsNumber } from "class-validator";

@Entity('responsible_responsible')
//@Index(["r_villagecode", "r_villagecodefull", "r_tamboncode", "r_ampurcode", "r_changwatcode"])
export class EResponsible {

    @PrimaryColumn()
    r_id_user: string;

    @PrimaryColumn('varchar', { length: "2", nullable: false })
    r_villagecode: string;

    @PrimaryColumn('varchar', { length: "8", nullable: false })
    r_villagecodefull: string;

   /* @PrimaryColumn('varchar', { length: "6", nullable: false })
    r_tamboncode: string;

    @PrimaryColumn('varchar', { length: "4", nullable: false })
    r_ampurcode: string;

    @PrimaryColumn('varchar', { length: "2", nullable: false })
    r_changwatcode: string;*/

    @Column('varchar', { length: "255", nullable: true })
    address: string;

    @PrimaryColumn()
    id_work: number;

    @Column()
    date_created: Date;

    @Column()
    date_updated: Date;

    @ManyToOne(type => EUser, user => user.responsibles ,{
        onDelete: "CASCADE"
    })
    @JoinColumn({ name: 'r_id_user', referencedColumnName: 'id_user' })
    user: EUser;

    @ManyToOne(type => EVillage, village => village.responsibles, {
        onDelete: "CASCADE"
    })
    @JoinColumn({ name: 'r_villagecodefull', referencedColumnName: 'villagecodefull' })
    @JoinColumn({ name: 'r_villagecode', referencedColumnName: 'villagecode' })
    /*@JoinColumn({ name: 'r_tamboncode', referencedColumnName: 'tamboncode' })
    @JoinColumn({ name: 'r_ampurcode', referencedColumnName: 'ampurcode' })
    @JoinColumn({ name: 'r_changwatcode', referencedColumnName: 'changwatcode' })*/
    village: EVillage;

    @ManyToOne(type => EWork, work => work.responsibles, {
        onDelete: "CASCADE"
    })
    @JoinColumn({ name: 'id_work', referencedColumnName: 'id_work' })
    work: EWork;
}

export class ResponsibleBody implements IResponsible {
    @IsNotEmpty({ message: 'ตรวจสอบข้อมูล' })
    @IsNumber()
    r_id_user: number;
    @IsNotEmpty({ message: 'ตรวจสอบข้อมูล' })
    r_villagecode: string;
    @IsNotEmpty({ message: 'ตรวจสอบข้อมูล' })
    r_villagecodefull: string;
    address?: string;
    @IsNotEmpty({ message: 'ตรวจสอบข้อมูล' })
    @IsNumber()
    id_work: number;
    date_created?: Date;
    date_updated?: Date;
}
