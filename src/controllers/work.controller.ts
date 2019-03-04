import { Controller, Get, Delete, Param, Post, Body, UseGuards, Put } from "@nestjs/common";
import { WorkService } from "../services/work.service";
import { ValidationPipe } from "../pipes/validation.pipe";
import { ParamDeleteWork, ParamWork } from "../models/entitys/work.entity";
import { AuthGuard } from "@nestjs/passport";
import { RoleGuard } from "../guards/role.gurad";
import { RoleAccount } from "../interfaces/app.interface";



@Controller('work')
@UseGuards(AuthGuard('jwt'))

export class WorkController {
    constructor(private readonly workService: WorkService) { 
        workService.firstStart({
            work: "แม่และเด็ก",
            active: true
        });
    }

    @Get()
    @UseGuards(new RoleGuard(RoleAccount.Member,RoleAccount.Employee,RoleAccount.Admin))
    getWorks() {
        return this.workService.getWorks();
    }

    @Delete(':id_work')
    @UseGuards(new RoleGuard(RoleAccount.Employee,RoleAccount.Admin))
    deleteWork(@Param(new ValidationPipe()) param: ParamDeleteWork) {
        return this.workService.deleteWork(param);
    }

    @Post()
    @UseGuards(new RoleGuard(RoleAccount.Member,RoleAccount.Employee,RoleAccount.Admin))
    addWork(@Body(new ValidationPipe()) body: ParamWork) {
        return this.workService.addAndupdateWork(body);
    }

    @Put()
    @UseGuards(new RoleGuard(RoleAccount.Employee,RoleAccount.Admin))
    updateWork(@Body(new ValidationPipe()) body: ParamWork) {
        return this.workService.addAndupdateWork(body);
    }

}