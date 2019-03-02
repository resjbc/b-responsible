import { PositionController } from './controllers/position.controller';
import { Module } from '@nestjs/common';
import { AppController } from './controllers/app.controller';
import { AppService } from './services/app.service';
import { typeOrmConfig } from './config';
import { TypeOrmModule } from '@nestjs/typeorm';
import { EntityModule } from './models/entity.module';
import { UserController } from './controllers/user.controller';
import { UserService } from './services/user.service';
import { ListDetailService } from './services/list_detail.service';
import { ListDetailController } from './controllers/list_detail.controller';
import { JwtAuthenService,JwtAuthenStrategy } from './services/jwt-authen.service';
import { AccountController } from './controllers/account.controller';
import { AccountService } from './services/account.service';
import { WorkService } from './services/work.service';
import { WorkController } from './controllers/work.controller';
import { ResponsibleController } from './controllers/responsible.controller';
import { ResponsibleService } from './services/responsible.service';
import { PositionService } from 'services/position.service';

@Module({
  imports: [TypeOrmModule.forRoot(typeOrmConfig),EntityModule],
  controllers: [
    AppController ,
    UserController,
    ListDetailController,
    AccountController,
    WorkController,
    PositionController,
    ResponsibleController
  ],
  providers: [
    AppService ,
    AccountService,
    UserService,
    WorkService,
    PositionService,
    ResponsibleService,
    ListDetailService,
    JwtAuthenService,
    JwtAuthenStrategy
  ],
})
export class AppModule {}
