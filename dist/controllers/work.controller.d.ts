import { WorkService } from "../services/work.service";
import { ParamDeleteWork, ParamWork } from "../models/entitys/work.entity";
export declare class WorkController {
    private readonly workService;
    constructor(workService: WorkService);
    getWorks(): Promise<import("../models/entitys/work.entity").EWork[]>;
    deleteWork(param: ParamDeleteWork): Promise<import("typeorm").DeleteResult>;
    addWork(body: ParamWork): Promise<any>;
    updateWork(body: ParamWork): Promise<any>;
}
