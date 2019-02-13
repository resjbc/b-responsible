import { Controller, Get, Delete, Param, Post, Body, Put } from "@nestjs/common";
import { UserService } from "../services/user.service";
import { ValidationPipe } from "../pipes/validation.pipe";
import { ParamUser, AccountBody } from "../models/entitys/user.entity";

@Controller('user')
export class UserController {
    constructor(private readonly userService: UserService) { }

    @Get("responsible")
    getResponcible() {
        return this.userService.getResponcibles();
    }

    @Get("users")
    getUsers() {
        return this.userService.getUsers();
    }

    @Get(":id_user")
    getUser(@Param(new ValidationPipe()) param: ParamUser) {
        return this.userService.getUser(param);
    }

    
    
    @Delete(':id_user')
    deleteUser(@Param(new ValidationPipe()) param: ParamUser) {
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