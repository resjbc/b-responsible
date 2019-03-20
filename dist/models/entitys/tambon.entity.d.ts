import { EAmphur } from "./amphur.entity";
import { EVillage } from "./village.entity";
export declare class ETambon {
    tamboncode: string;
    tamboncodefull: string;
    ampurcode: string;
    changwatcode: string;
    tambonname: string;
    flag_status: string;
    amphur: EAmphur;
    villages: EVillage[];
}
