import { Controller, Get, Param, Body, Query } from "@nestjs/common";
import { ListDetailService } from "../services/list_detail.service";


@Controller('list')
export class ListDetailController {
    constructor(private readonly list_detailService: ListDetailService) { }

    @Get("amphurs")
    getAmphurs() {
        return this.list_detailService.getAmphurs();
    }

    @Get("tambons/:amphurcode")
    getTambons(@Param() amphurcode: { amphurcode: any }) {
        return this.list_detailService.getTambons(amphurcode.amphurcode);
    }

    @Get("villages/:tamboncode")
    getVillages(@Param() tamboncode: { tamboncode: any }) {
        return this.list_detailService.getVillages(tamboncode.tamboncode);
    }

    @Get("hospitals")
    getHospitals(@Query('amphurcode') amphurcode: any, @Query('changwatcode') changwatcode: any) {
        return this.list_detailService.getHospitals(amphurcode, changwatcode);
    }

    @Get("positions")
    getPositions() {
        return this.list_detailService.getPositions();
    }
}