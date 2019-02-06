import { Module } from '@nestjs/common';
import { AppController } from './controllers/app.controller';
import { AppService } from './services/app.service';
import { typeOrmConfig } from './config';
import { TypeOrmModule } from '@nestjs/typeorm';
import { EntityModule } from 'models/entity.module';
import { UserController } from 'controllers/user.controller';
import { UserService } from 'services/user.service';

@Module({
  imports: [TypeOrmModule.forRoot(typeOrmConfig),EntityModule],
  controllers: [
    AppController ,
    UserController
  ],
  providers: [
    AppService ,
    UserService
  ],
})
export class AppModule {}
