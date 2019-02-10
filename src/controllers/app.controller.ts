import { ValidationPipe } from './../pipes/validation.pipe';
import { Get, Controller, Post, Body } from '@nestjs/common';
import { AppService } from '../services/app.service';
import { RegisterBody, LoginBody } from '../models/entitys/user.entity';

@Controller()
export class AppController {
  constructor(private readonly appService: AppService) {}

  @Get()
  root(): string {
    return this.appService.root();
  }

  @Post('login')
    Login(@Body(new ValidationPipe()) body: LoginBody) {
        return this.appService.onLogin(body);
    }

  // ลงทะเบียน
  @Post('register') 
  register(@Body(new ValidationPipe()) body: RegisterBody) {
    return this.appService.onRegister(body);
  }
}
