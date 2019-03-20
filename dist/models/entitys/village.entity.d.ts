import { EResponsible } from "./responsible.entity";
import { ETambon } from "./tambon.entity";
export declare class EVillage {
    villagecode: string;
    villagecodefull: string;
    tamboncode: string;
    ampurcode: string;
    changwatcode: string;
    villagename: string;
    flag_status: string;
    responsibles: EResponsible[];
    tambon: ETambon;
}
