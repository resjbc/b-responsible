import { EResponsible } from "./responsible.entity";
export declare class EWork {
    id_work?: number;
    work: string;
    active: boolean;
    responsibles: EResponsible[];
}
export declare class ParamDeleteWork {
    id_work?: any;
}
export declare class ParamWork {
    id_work?: any;
    work: string;
    active?: boolean;
}
