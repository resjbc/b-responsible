import { Req, Controller, Post, Body, Get, UseGuards } from "@nestjs/common";
import { IAccount } from "../interfaces/app.interface";
import { Request } from 'express';
import { ValidationPipe } from "../pipes/validation.pipe";
import { ChangePasswordBody } from "../models/entitys/user.entity";
import { AppService } from "../services/app.service";
import { AuthGuard } from "@nestjs/passport";
import { AccountService } from "../services/account.service";



@Controller('account')
@UseGuards(AuthGuard('jwt'))
export class AccountController {
    constructor(private readonly accountService: AccountService) { }


    @Get('data') // แสดงข้อมูลผู้ใช้งานที่เข้าสู่ระบบ
    getUserLogin(@Req() req: Request) {
        const userLogin: IAccount = req.user as IAccount;
        userLogin.username = '';
        userLogin.password = '';
        return userLogin;
    }

    @Post('change-password') //เปลี่ยนรหัสผ่าน
    changePassword(@Req() req: Request, @Body(new ValidationPipe()) body: ChangePasswordBody) {
        return this.accountService.onChangePassword(req.user.id_user, body);
    }

}