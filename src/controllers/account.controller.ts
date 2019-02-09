import { Req, Controller, Post, Body, Get } from "@nestjs/common";
import { IAccount } from "interfaces/app.interface";
import { Request } from 'express';
import { ValidationPipe } from "../pipes/validation.pipe";
import { LoginBody } from "../models/entitys/user.entity";
import { AppService } from "../services/app.service";



@Controller('account')
export class AccountController {
    constructor(private readonly service: AppService) { }

    @Post('login')
    Login(@Body(new ValidationPipe()) body: LoginBody) {
        return this.service.onLogin(body);
    }

    @Get('data') // แสดงข้อมูลผู้ใช้งานที่เข้าสู่ระบบ
    getUserLogin() {
       
    }

    @Post('change-password') //เปลี่ยนรหัสผ่าน
    changePassword() {
       
    }

}