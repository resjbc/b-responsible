import { Controller, Get, Param, Delete, Body, Post, Put, UseGuards } from "@nestjs/common";
import { ResponsibleService } from "../services/responsible.service";
import { ValidationPipe } from "../pipes/validation.pipe";
import { ParamUser } from "../models/entitys/user.entity";
import { ResponsibleBody, ParamResponsibleSearch } from "../models/entitys/responsible.entity";
import { AuthGuard } from "@nestjs/passport";
import { RoleGuard } from "../guards/role.gurad";
import { RoleAccount } from "../interfaces/app.interface";

@Controller('responsible')
@UseGuards(AuthGuard('jwt'))
export class ResponsibleController {
    constructor(private readonly responsibleService: ResponsibleService) { }

    @Get(":id_user")
    @UseGuards(new RoleGuard(RoleAccount.Member, RoleAccount.Employee, RoleAccount.Admin))
    getResponsible(@Param(new ValidationPipe()) param: ParamUser) {
        return this.responsibleService.getResponsible(param);
    }

    @Get("search/:codefull")
    @UseGuards(new RoleGuard(RoleAccount.Employee, RoleAccount.Admin))
    getResponsible_search(@Param(new ValidationPipe()) param: ParamResponsibleSearch) {
        return this.responsibleService.getResponsible_search(param);
    }

    @Post()
    @UseGuards(new RoleGuard(RoleAccount.Member, RoleAccount.Employee, RoleAccount.Admin))
    addResponsible(@Body(new ValidationPipe()) body: ResponsibleBody) {
        return this.responsibleService.addResponsible(body);
    }

    @Put()
    @UseGuards(new RoleGuard(RoleAccount.Member, RoleAccount.Employee, RoleAccount.Admin))
    updateResponsible(@Body(new ValidationPipe()) body: ResponsibleBody) {
        return this.responsibleService.updateResponsible(body);
    }


    @Delete()
    @UseGuards(new RoleGuard(RoleAccount.Member, RoleAccount.Employee, RoleAccount.Admin))
    deleteResponsible(@Body(new ValidationPipe()) body: ResponsibleBody) {
        return this.responsibleService.deleteResponsible(body);
    }
}