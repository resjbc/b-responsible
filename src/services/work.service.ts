import { Injectable, BadRequestException } from "@nestjs/common";
import { InjectRepository } from "@nestjs/typeorm";
import { Repository } from "typeorm";
import { EWork } from "../models/entitys/work.entity";

@Injectable()
export class WorkService {
    constructor(
        @InjectRepository(EWork)
        private readonly workRepository: Repository<EWork>,
    ) { }

    async getWorks() {
        const works = await this.workRepository.createQueryBuilder('work')
            .select().getMany();

        return works;
    }

    async deleteWork(work) {
        return await this.workRepository.delete(work)
            .catch(err => { throw new BadRequestException(err) });;
    }

    async addAndupdateWork(work) {

        if (work) {
            const count = await this.workRepository.count({ work: work.work });
            if (count > 0) throw new BadRequestException("มีงานนี้ในระบบแล้ว")
        }

        work.active = true;

        if (work.id_work) {
            const work__ = await this.workRepository.update({ id_work: work.id_work }, work);
            return work__;
        }

        const work__ = await this.workRepository.save(work);
        return work__;
    }


}