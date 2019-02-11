import { Controller, Get, Delete, Param, Post, Body, Put } from "@nestjs/common";
import { UserService } from "../services/user.service";
import { ValidationPipe } from "../pipes/validation.pipe";
import { ParamDeleteUser, AccountBody } from "../models/entitys/user.entity";

@Controller('user')
export class UserController {
    constructor(private readonly userService: UserService) { }

    @Get("employee")
    getUsers() {
        return this.userService.getUsers();
    }

    @Get("responcible")
    getResponcible() {
        return this.userService.getResponcible();
    }

    @Delete(':id_user')
    deleteUser(@Param(new ValidationPipe()) param: ParamDeleteUser) {
        return this.userService.deleteUser(param);
    }

    @Post()
    addUser(@Body(new ValidationPipe()) body: AccountBody) {
        return this.userService.addUser(body);
    }

    @Put()
    updateUser(@Body(new ValidationPipe()) body: AccountBody) {
        return this.userService.updateUser(body);
    }
}