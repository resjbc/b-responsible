import { Entity, Column, PrimaryColumn, Index, PrimaryGeneratedColumn, ManyToMany, JoinColumn, JoinTable, OneToOne } from "typeorm";
import { EUser } from "./user.entity";
import { EVillage } from "./village.entity";

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

    /*@OneToOne(() => EUser)
    @JoinColumn()
    user: EUser;

    @OneToOne(() => EVillage)
    @JoinColumn()
    village: EVillage;*/
}
