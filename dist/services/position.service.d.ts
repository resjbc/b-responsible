import { Repository } from "typeorm";
import { EPosition } from "../models/entitys/position.entity";
export declare class PositionService {
    private readonly positionRepository;
    constructor(positionRepository: Repository<EPosition>);
    getPositions(): Promise<EPosition[]>;
    deletePosition(position: any): Promise<import("typeorm").DeleteResult>;
    addAndupdatePosition(position: any): Promise<any>;
    firstStart(position: any): Promise<void>;
}
