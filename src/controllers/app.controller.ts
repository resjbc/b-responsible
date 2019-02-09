import { ValidationPipe } from './../pipes/validation.pipe';
import { Get, Controller, Post, Body } from '@nestjs/common';
import { AppService } from '../services/app.service';
import { RegisterBody } from '../models/entitys/user.entity';

@Controller()
export class AppController {
  constructor(private readonly appService: AppService) {}

  @Get()
  root(): string {
    return this.appService.root();
  }

  // ลงทะเบียน
  @Post('register') 
  register(@Body(new ValidationPipe()) body: RegisterBody) {
    return this.appService.onRegister(body);
  }
}
