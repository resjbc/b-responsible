import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { EAmphur } from './entitys/amphur.entity';
import { EChangwat } from './entitys/changwat.entity';
import { ETambon } from './entitys/tambon.entity';
import { EVillage } from './entitys/village.entity';
import { EHospital } from './entitys/hospital.entity';
import { EUser } from './entitys/user.entity';
import { EResponsible } from './entitys/responsible.entity';
import { EWork } from './entitys/work.entity';
import { EPosition } from './entitys/position.entity';

@Module({
    imports: [
      TypeOrmModule.forFeature([EChangwat]),
      TypeOrmModule.forFeature([EAmphur]),
      TypeOrmModule.forFeature([ETambon]),
      TypeOrmModule.forFeature([EVillage]),
      TypeOrmModule.forFeature([EHospital]),
      TypeOrmModule.forFeature([EUser]),
      TypeOrmModule.forFeature([EWork]),
      TypeOrmModule.forFeature([EResponsible]),
      TypeOrmModule.forFeature([EPosition]),
    ],
    providers: [
     
    ],
    controllers: [
    ],
  })
  export class EntityModule { }