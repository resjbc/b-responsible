import { IResponsible } from './../interfaces/app.interface';
import { EUser } from "../models/entitys/user.entity";
import { Repository } from "typeorm";
import { EResponsible, ParamResponsible } from "../models/entitys/responsible.entity";
export declare class ResponsibleService {
    private readonly userRepository;
    private readonly responsibleRepository;
    constructor(userRepository: Repository<EUser>, responsibleRepository: Repository<EResponsible>);
    getResponsible(user: any): Promise<EResponsible[]>;
    getResponsible_search(code: any): Promise<EResponsible[]>;
    addResponsible(body: any): Promise<IResponsible & EResponsible>;
    updateResponsible(body: any): Promise<import("typeorm").UpdateResult>;
    deleteResponsible(responsible: ParamResponsible): Promise<import("typeorm").DeleteResult>;
}
