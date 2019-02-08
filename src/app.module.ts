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

@Module({
  imports: [TypeOrmModule.forRoot(typeOrmConfig),EntityModule],
  controllers: [
    AppController ,
    UserController,
    ListDetailController

  ],
  providers: [
    AppService ,
    UserService,
    ListDetailService
  ],
})
export class AppModule {}
