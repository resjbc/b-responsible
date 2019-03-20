import { ListDetailService } from "../services/list_detail.service";
export declare class ListDetailController {
    private readonly list_detailService;
    constructor(list_detailService: ListDetailService);
    getAmphurs(): Promise<import("../models/entitys/amphur.entity").EAmphur[]>;
    getTambons(amphurcode: {
        amphurcode: any;
    }): Promise<import("../models/entitys/tambon.entity").ETambon[]>;
    getVillages(tamboncode: {
        tamboncode: any;
    }): Promise<import("../models/entitys/village.entity").EVillage[]>;
    getHospitals(amphurcode: any, changwatcode: any): Promise<import("../models/entitys/hospital.entity").EHospital[]>;
    getPositions(): Promise<import("../models/entitys/position.entity").EPosition[]>;
}
