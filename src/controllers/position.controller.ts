import { ParamDeletePosition, ParamPosition } from './../models/entitys/position.entity';
import { PositionService } from './../services/position.service';
import { Controller, Get, Delete, Param, Post, Body, UseGuards, Put } from "@nestjs/common";
import { ValidationPipe } from "../pipes/validation.pipe";
import { AuthGuard } from "@nestjs/passport";
import { RoleGuard } from "../guards/role.gurad";
import { RoleAccount } from "../interfaces/app.interface";



@Controller('position')
@UseGuards(AuthGuard('jwt'))

export class PositionController {
    constructor(private readonly positionService: PositionService) { }

    @Get()
    @UseGuards(new RoleGuard(RoleAccount.Member,RoleAccount.Employee,RoleAccount.Admin))
    getWorks() {
        return this.positionService.getPositions();
    }

    @Delete(':id_position')
    @UseGuards(new RoleGuard(RoleAccount.Employee,RoleAccount.Admin))
    deleteWork(@Param(new ValidationPipe()) param: ParamDeletePosition) {
        return this.positionService.deletePosition(param);
    }

    @Post()
    @UseGuards(new RoleGuard(RoleAccount.Employee,RoleAccount.Admin))
    addWork(@Body(new ValidationPipe()) body: ParamPosition) {
        return this.positionService.addAndupdatePosition(body);
    }

    @Put()
    @UseGuards(new RoleGuard(RoleAccount.Employee,RoleAccount.Admin))
    updateWork(@Body(new ValidationPipe()) body: ParamPosition) {
        return this.positionService.addAndupdatePosition(body);
    }

}