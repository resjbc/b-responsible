import { ResponsibleService } from "../services/responsible.service";
import { ParamUser } from "../models/entitys/user.entity";
import { ResponsibleBody, ParamResponsibleSearch, ParamResponsible } from "../models/entitys/responsible.entity";
export declare class ResponsibleController {
    private readonly responsibleService;
    constructor(responsibleService: ResponsibleService);
    getResponsible(param: ParamUser): Promise<import("../models/entitys/responsible.entity").EResponsible[]>;
    getResponsible_search(param: ParamResponsibleSearch): Promise<import("../models/entitys/responsible.entity").EResponsible[]>;
    addResponsible(body: ResponsibleBody): Promise<import("../interfaces/app.interface").IResponsible & import("../models/entitys/responsible.entity").EResponsible>;
    updateResponsible(body: ResponsibleBody): Promise<import("typeorm").UpdateResult>;
    deleteResponsible(param: ParamResponsible): Promise<import("typeorm").DeleteResult>;
}
