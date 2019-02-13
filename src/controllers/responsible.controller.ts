import { Controller, Get, Param, Delete, Body, Post, Put } from "@nestjs/common";
import { ResponsibleService } from "../services/responsible.service";
import { ValidationPipe } from "../pipes/validation.pipe";
import { ParamUser } from "../models/entitys/user.entity";
import { ResponsibleBody } from "../models/entitys/responsible.entity";

@Controller('responsible')
export class ResponsibleController {
    constructor(private readonly responsibleService: ResponsibleService) { }

    @Get(":id_user")
    getResponsible(@Param(new ValidationPipe()) param: ParamUser) {
        return this.responsibleService.getResponsible(param);
    }

    @Post()
    addResponsible(@Body(new ValidationPipe()) body: ResponsibleBody) {
        return this.responsibleService.addResponsible(body);
    }

    @Put()
    updateResponsible(@Body(new ValidationPipe()) body: ResponsibleBody) {
        return this.responsibleService.updateResponsible(body);
    }


    @Delete()
    deleteWork(@Body(new ValidationPipe()) body: ResponsibleBody) {
        return this.responsibleService.deleteResponsible(body);
    }
}