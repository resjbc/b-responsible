import { Repository } from "typeorm";
import { EChangwat } from "../models/entitys/changwat.entity";
import { EAmphur } from "../models/entitys/amphur.entity";
import { ETambon } from "../models/entitys/tambon.entity";
import { EVillage } from "../models/entitys/village.entity";
import { EHospital } from "../models/entitys/hospital.entity";
import { EPosition } from "../models/entitys/position.entity";
export declare class ListDetailService {
    private readonly changwatRepository;
    private readonly amphurRepository;
    private readonly tambonRepository;
    private readonly villageRepository;
    private readonly hospitalRepository;
    private readonly positionRepository;
    constructor(changwatRepository: Repository<EChangwat>, amphurRepository: Repository<EAmphur>, tambonRepository: Repository<ETambon>, villageRepository: Repository<EVillage>, hospitalRepository: Repository<EHospital>, positionRepository: Repository<EPosition>);
    getAmphurs(): Promise<EAmphur[]>;
    getTambons(amphurcode: any): Promise<ETambon[]>;
    getVillages(tamboncodefull: any): Promise<EVillage[]>;
    getHospitals(amphurcode: any, changwatcode?: any): Promise<EHospital[]>;
    getPositions(): Promise<EPosition[]>;
}
