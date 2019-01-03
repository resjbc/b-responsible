import { Module } from '@nestjs/common';
import { AppController } from './controllers/app.controller';
import { AppService } from './services/app.service';
import { typeOrmConfig } from './config';
import { TypeOrmModule } from '@nestjs/typeorm';
import { EntityModule } from 'models/entity.module';

@Module({
  imports: [TypeOrmModule.forRoot(typeOrmConfig),EntityModule],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
