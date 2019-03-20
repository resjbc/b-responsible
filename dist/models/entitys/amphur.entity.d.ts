import { EChangwat } from "./changwat.entity";
import { ETambon } from "./tambon.entity";
export declare class EAmphur {
    ampurcode: string;
    ampurcodefull: string;
    changwatcode: string;
    ampurname: string;
    flag_status: string;
    changwat: EChangwat;
    tambons: ETambon[];
}
