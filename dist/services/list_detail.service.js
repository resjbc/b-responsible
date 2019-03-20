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
const changwat_entity_1 = require("../models/entitys/changwat.entity");
const amphur_entity_1 = require("../models/entitys/amphur.entity");
const tambon_entity_1 = require("../models/entitys/tambon.entity");
const village_entity_1 = require("../models/entitys/village.entity");
const hospital_entity_1 = require("../models/entitys/hospital.entity");
const position_entity_1 = require("../models/entitys/position.entity");
let ListDetailService = class ListDetailService {
    constructor(changwatRepository, amphurRepository, tambonRepository, villageRepository, hospitalRepository, positionRepository) {
        this.changwatRepository = changwatRepository;
        this.amphurRepository = amphurRepository;
        this.tambonRepository = tambonRepository;
        this.villageRepository = villageRepository;
        this.hospitalRepository = hospitalRepository;
        this.positionRepository = positionRepository;
    }
    getAmphurs() {
        return __awaiter(this, void 0, void 0, function* () {
            const amphurs = yield this.amphurRepository.createQueryBuilder('amphur')
                .select().getMany();
            return amphurs;
        });
    }
    getTambons(amphurcode) {
        return __awaiter(this, void 0, void 0, function* () {
            const tambons = yield this.tambonRepository.createQueryBuilder('tambon')
                .select()
                .where("tambon.ampurcode = :amphurcode", { amphurcode: amphurcode })
                .andWhere("tambon.flag_status = 0")
                .getMany();
            return tambons;
        });
    }
    getVillages(tamboncodefull) {
        return __awaiter(this, void 0, void 0, function* () {
            const villages = yield this.villageRepository.createQueryBuilder('village')
                .select()
                .where("village.tamboncode = :tamboncodefull", { tamboncodefull: tamboncodefull })
                .andWhere("village.flag_status = 0")
                .getMany();
            return villages;
        });
    }
    getHospitals(amphurcode, changwatcode = "94") {
        return __awaiter(this, void 0, void 0, function* () {
            const hospitals = yield this.hospitalRepository.createQueryBuilder('hospital')
                .select()
                .where("hospital.provcode = :changwatcode", { changwatcode: changwatcode })
                .andWhere("hospital.distcode = :amphurcode", { amphurcode: amphurcode })
                .getMany();
            return hospitals;
        });
    }
    getPositions() {
        return __awaiter(this, void 0, void 0, function* () {
            const positions = yield this.positionRepository.createQueryBuilder('position')
                .select().getMany();
            return positions;
        });
    }
};
ListDetailService = __decorate([
    common_1.Injectable(),
    __param(0, typeorm_1.InjectRepository(changwat_entity_1.EChangwat)),
    __param(1, typeorm_1.InjectRepository(amphur_entity_1.EAmphur)),
    __param(2, typeorm_1.InjectRepository(tambon_entity_1.ETambon)),
    __param(3, typeorm_1.InjectRepository(village_entity_1.EVillage)),
    __param(4, typeorm_1.InjectRepository(hospital_entity_1.EHospital)),
    __param(5, typeorm_1.InjectRepository(position_entity_1.EPosition)),
    __metadata("design:paramtypes", [typeorm_2.Repository,
        typeorm_2.Repository,
        typeorm_2.Repository,
        typeorm_2.Repository,
        typeorm_2.Repository,
        typeorm_2.Repository])
], ListDetailService);
exports.ListDetailService = ListDetailService;
//# sourceMappingURL=list_detail.service.js.map