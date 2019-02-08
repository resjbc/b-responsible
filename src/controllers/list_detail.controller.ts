import { Controller, Get, Param } from "@nestjs/common";
import { ListDetailService } from "../services/list_detail.service";


@Controller('list')
export class ListDetailController {
    constructor(private readonly list_detailService: ListDetailService) { }

    @Get("amphurs")
    getAmphurs() {
        return this.list_detailService.getAmphurs();
    }

    @Get("tambons/:amphurcode")
    getTambons(@Param() amphurcode: { amphurcode: number }) {
        return this.list_detailService.getTambons(amphurcode.amphurcode);
    }
}