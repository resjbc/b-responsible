import { Injectable, BadRequestException } from "@nestjs/common";
import { InjectRepository } from "@nestjs/typeorm";
import { Repository } from "typeorm";
import { EWork } from "../models/entitys/work.entity";
import { EPosition } from "models/entitys/position.entity";

@Injectable()
export class PositionService {
    constructor(
        @InjectRepository(EPosition)
        private readonly positionRepository: Repository<EPosition>,
    ) { }

    async getPositions() {
        const positions = await this.positionRepository.createQueryBuilder('position')
            .select().getMany();

        return positions;
    }

    async deletePosition(position) {
        return await this.positionRepository.delete(position)
            .catch(err => { throw new BadRequestException(err) });;
    }

    async addAndupdatePosition(position) {

        if (position) {
            const count = await this.positionRepository.count({ position: position.position });
            if (count > 0) throw new BadRequestException("มีตำแหน่งนี้ในระบบแล้ว")
        }

        position.active = true;

        if (position.id_position) {
            const position__ = await this.positionRepository.update({ id_position: position.id_position }, position);
            return position__;
        }

        const position__ = await this.positionRepository.save(position);
        return position__;
    }


}