import { Controller, Get } from "@nestjs/common";
import { UserService } from "../services/user.service";

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
}