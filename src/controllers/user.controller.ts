import { PositionService } from './../services/position.service';
import { Controller, Get, Delete, Param, Post, Body, Put, UseGuards } from "@nestjs/common";
import { UserService } from "../services/user.service";
import { ValidationPipe } from "../pipes/validation.pipe";
import { ParamUser, AccountBody } from "../models/entitys/user.entity";
import { AuthGuard } from "@nestjs/passport";
import { RoleGuard } from "../guards/role.gurad";
import { RoleAccount } from "../interfaces/app.interface";

@Controller('user')
@UseGuards(AuthGuard('jwt'))
export class UserController {
    constructor(
        private readonly userService: UserService,
        private readonly positionService: PositionService,
    ) {
        this.positionService.firstStart({
            position: "นักวิชาการคอมพิวเตอร์",
            active: true
        }).then(() => {
            this.userService.firstStart({
                cid: 9999999999999,
                username: "admin",
                password: "adminssj",
                id_position: 1,
                hoscode: "00073",
                firstname: "admin",
                lastname: "ssj",
                role: 3,
                date_created: new Date(),
                date_updated: new Date()
            });
        }).catch()

    }

    @Get("responsible")
    @UseGuards(new RoleGuard(RoleAccount.Employee, RoleAccount.Admin))
    getResponcible() {
        return this.userService.getResponcibles();
    }

    @Get("users")
    @UseGuards(new RoleGuard(RoleAccount.Admin))
    getUsers() {
        return this.userService.getUsers();
    }

    @Get(":id_user")
    @UseGuards(new RoleGuard(RoleAccount.Admin))
    getUser(@Param(new ValidationPipe()) param: ParamUser) {
        return this.userService.getUser(param);
    }



    @Delete(':id_user')
    @UseGuards(new RoleGuard(RoleAccount.Admin))
    deleteUser(@Param(new ValidationPipe()) param: ParamUser) {
        return this.userService.deleteUser(param);
    }

    @Post()
    @UseGuards(new RoleGuard(RoleAccount.Admin))
    addUser(@Body(new ValidationPipe()) body: AccountBody) {
        return this.userService.addUser(body);
    }

    @Put()
    @UseGuards(new RoleGuard(RoleAccount.Admin))
    updateUser(@Body(new ValidationPipe()) body: AccountBody) {
        return this.userService.updateUser(body);
    }
}