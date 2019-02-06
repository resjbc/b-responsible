import { Entity, Column, PrimaryColumn, Index, OneToMany } from "typeorm";
import { EUser } from "./user.entity";

@Entity('chospital_responsible')
@Index("changwatcode",["provcode", "distcode", "subdistcode", "hoscode"])
export class EHospital {
    @PrimaryColumn('char', { length: "5" , nullable: false})
    @Index("hoscode")
    hoscode: string;

    @Column({ length: "255" , nullable: true})
    hosname: string;

    @Column({type: "char", length: "2" , nullable: true})
    hostype: string;

    @Column({type: "varchar", length: "50" , nullable: true})
    address: string;

    @Column({type: "varchar", length: "50" , nullable: true})
    road: string;

    @Column({type: "varchar", length: "2" , nullable: true})
    mu: string;

    @Column({type: "char", length: "2" , nullable: true})
    subdistcode: string;

    @Column({type: "char", length: "2" , nullable: true})
    distcode: string;

    @Column({type: "char", length: "2" , nullable: true})
    @Index("provcode")
    provcode: string;

    @Column({type: "char", length: "5" , nullable: true})
    @Index("zipcode")
    postcode: string;

    @Column({type: "char", length: "9" , nullable: true})
    hoscodenew: string;

    @Column({type: "char", length: "5" , nullable: true})
    bed: string;

    @Column({type: "varchar", length: "255" , nullable: true})
    level_service: string;

    @Column({type: "char", length: "5" , nullable: true})
    bedhos: string;

    @Column({ type: "int", width: 200 , nullable: true })
    hdc_regist: string;

    @Column({type: "varchar", length: "5" , nullable: true})
    dep: string;

    @Column({type: "char", length: "5" , nullable: true})
    hmain_sent: string;

    @OneToMany(type => EUser, user => user.hoscode)
    users: EUser[];

    

}
