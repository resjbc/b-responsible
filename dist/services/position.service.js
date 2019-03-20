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
const position_entity_1 = require("../models/entitys/position.entity");
let PositionService = class PositionService {
    constructor(positionRepository) {
        this.positionRepository = positionRepository;
    }
    getPositions() {
        return __awaiter(this, void 0, void 0, function* () {
            const positions = yield this.positionRepository.createQueryBuilder('position')
                .select().getMany();
            return positions;
        });
    }
    deletePosition(position) {
        return __awaiter(this, void 0, void 0, function* () {
            return yield this.positionRepository.delete(position)
                .catch(err => { throw new common_1.BadRequestException(err); });
            ;
        });
    }
    addAndupdatePosition(position) {
        return __awaiter(this, void 0, void 0, function* () {
            if (position) {
                const count = yield this.positionRepository.count({ position: position.position });
                if (count > 0)
                    throw new common_1.BadRequestException("มีตำแหน่งนี้ในระบบแล้ว");
            }
            position.active = true;
            if (position.id_position) {
                const position__ = yield this.positionRepository.update({ id_position: position.id_position }, position);
                return position__;
            }
            const position__ = yield this.positionRepository.save(position);
            return position__;
        });
    }
    firstStart(position) {
        return __awaiter(this, void 0, void 0, function* () {
            const position_ = yield this.positionRepository.findOne({ position: position.position });
            if (!position_)
                yield this.positionRepository.save(position);
        });
    }
};
PositionService = __decorate([
    common_1.Injectable(),
    __param(0, typeorm_1.InjectRepository(position_entity_1.EPosition)),
    __metadata("design:paramtypes", [typeorm_2.Repository])
], PositionService);
exports.PositionService = PositionService;
//# sourceMappingURL=position.service.js.map