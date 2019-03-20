import { EUser } from "./user.entity";
import { EVillage } from "./village.entity";
import { EWork } from "./work.entity";
import { IResponsible } from "../../interfaces/app.interface";
export declare class EResponsible {
    id_responsible: string;
    r_id_user: string;
    r_villagecode: string;
    r_villagecodefull: string;
    address: string;
    id_work: number;
    date_created: Date;
    date_updated: Date;
    user: EUser;
    village: EVillage;
    work: EWork;
}
export declare class ResponsibleBody implements IResponsible {
    id_responsible?: any;
    r_id_user: number;
    r_villagecode: string;
    r_villagecodefull: string;
    address?: string;
    id_work: number;
    date_created?: Date;
    date_updated?: Date;
}
export declare class ParamResponsibleSearch {
    codefull?: any;
}
export declare class ParamResponsible {
    id_responsible: string;
}
