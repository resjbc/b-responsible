"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};
var __param = (this && this.__param) || function (paramIndex, decorator) {
    return function (target, key) { decorator(target, key, paramIndex); }
};
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : new P(function (resolve) { resolve(result.value); }).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
Object.defineProperty(exports, "__esModule", { value: true });
const common_1 = require("@nestjs/common");
const typeorm_1 = require("@nestjs/typeorm");
const typeorm_2 = require("typeorm");
const work_entity_1 = require("../models/entitys/work.entity");
let WorkService = class WorkService {
    constructor(workRepository) {
        this.workRepository = workRepository;
    }
    getWorks() {
        return __awaiter(this, void 0, void 0, function* () {
            const works = yield this.workRepository.createQueryBuilder('work')
                .select().getMany();
            return works;
        });
    }
    deleteWork(work) {
        return __awaiter(this, void 0, void 0, function* () {
            return yield this.workRepository.delete(work)
                .catch(err => { throw new common_1.BadRequestException(err); });
            ;
        });
    }
    addAndupdateWork(work) {
        return __awaiter(this, void 0, void 0, function* () {
            if (work) {
                const count = yield this.workRepository.count({ work: work.work });
                if (count > 0)
                    throw new common_1.BadRequestException("มีงานนี้ในระบบแล้ว");
            }
            work.active = true;
            if (work.id_work) {
                const work__ = yield this.workRepository.update({ id_work: work.id_work }, work);
                return work__;
            }
            const work__ = yield this.workRepository.save(work);
            return work__;
        });
    }
    firstStart(work) {
        return __awaiter(this, void 0, void 0, function* () {
            const work_ = yield this.workRepository.findOne({ work: work.work });
            if (!work_)
                yield this.workRepository.save(work);
        });
    }
};
WorkService = __decorate([
    common_1.Injectable(),
    __param(0, typeorm_1.InjectRepository(work_entity_1.EWork)),
    __metadata("design:paramtypes", [typeorm_2.Repository])
], WorkService);
exports.WorkService = WorkService;
//# sourceMappingURL=work.service.js.map