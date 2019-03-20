import { Repository } from "typeorm";
import { EWork } from "../models/entitys/work.entity";
export declare class WorkService {
    private readonly workRepository;
    constructor(workRepository: Repository<EWork>);
    getWorks(): Promise<EWork[]>;
    deleteWork(work: any): Promise<import("typeorm").DeleteResult>;
    addAndupdateWork(work: any): Promise<any>;
    firstStart(work: any): Promise<void>;
}
