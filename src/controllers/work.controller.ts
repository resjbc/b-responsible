import { Controller, Get, Delete, Param, Post, Body } from "@nestjs/common";
import { WorkService } from "../services/work.service";
import { ValidationPipe } from "../pipes/validation.pipe";
import { ParamDeleteWork, ParamWork } from "../models/entitys/work.entity";



@Controller('work')
export class WorkController {
    constructor(private readonly workService: WorkService) { }

    @Get()
    getWorks() {
        return this.workService.getWorks();
    }

    @Delete(':id_work')
    deleteWork(@Param(new ValidationPipe()) param: ParamDeleteWork) {
        return this.workService.deleteWork(param);
    }

    @Post()
    addAndupdateWork(@Body(new ValidationPipe()) body: ParamWork) {
        return this.workService.addAndupdateWork(body);
    }

}