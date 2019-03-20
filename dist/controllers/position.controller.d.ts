import { ParamDeletePosition, ParamPosition } from './../models/entitys/position.entity';
import { PositionService } from './../services/position.service';
export declare class PositionController {
    private readonly positionService;
    constructor(positionService: PositionService);
    getWorks(): Promise<import("../models/entitys/position.entity").EPosition[]>;
    deleteWork(param: ParamDeletePosition): Promise<import("typeorm").DeleteResult>;
    addWork(body: ParamPosition): Promise<any>;
    updateWork(body: ParamPosition): Promise<any>;
}
