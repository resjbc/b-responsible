import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { EAmphur } from './entitys/amphur.entity';
import { EChangwat } from './entitys/changwat.entity';
import { ETambon } from './entitys/tambon.entity';
import { EVillage } from './entitys/village.entity';
import { EHospital } from './entitys/hospital.entity';

@Module({
    imports: [
      TypeOrmModule.forFeature([EChangwat]),
      TypeOrmModule.forFeature([EAmphur]),
      TypeOrmModule.forFeature([ETambon]),
      TypeOrmModule.forFeature([EVillage]),
      TypeOrmModule.forFeature([EHospital]),
      
    ],
    providers: [
     
    ],
    controllers: [
    ],
  })
  export class EntityModule { }