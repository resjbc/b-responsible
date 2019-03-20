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
const user_entity_1 = require("../models/entitys/user.entity");
const typeorm_2 = require("typeorm");
const responsible_entity_1 = require("../models/entitys/responsible.entity");
let ResponsibleService = class ResponsibleService {
    constructor(userRepository, responsibleRepository) {
        this.userRepository = userRepository;
        this.responsibleRepository = responsibleRepository;
    }
    getResponsible(user) {
        return __awaiter(this, void 0, void 0, function* () {
            const user_responcibles = yield this.responsibleRepository.createQueryBuilder('responsible')
                .select([
                "responsible.id_responsible",
                "responsible.r_id_user",
                "responsible.r_villagecode",
                "responsible.r_villagecodefull",
                "responsible.id_work",
                "work.work",
                "changwat.changwatname",
                "amphur.ampurname",
                "tambon.tambonname",
                "village.villagename",
                "responsible.address"
            ])
                .leftJoin("responsible.work", "work")
                .leftJoin("responsible.village", "village")
                .leftJoin("village.tambon", "tambon")
                .leftJoin("tambon.amphur", "amphur")
                .leftJoin("amphur.changwat", "changwat")
                .where("responsible.r_id_user = :r_id_user", { r_id_user: user.id_user })
                .getMany();
            return user_responcibles;
        });
    }
    getResponsible_search(code) {
        return __awaiter(this, void 0, void 0, function* () {
            const user_responcibles = yield this.responsibleRepository.createQueryBuilder('responsible')
                .select([
                "user.firstname",
                "user.lastname",
                "position.position",
                "hospital.hosname",
                "responsible.r_villagecode",
                "responsible.r_villagecodefull",
                "responsible.id_work",
                "work.work",
                "changwat.changwatname",
                "amphur.ampurname",
                "tambon.tambonname",
                "village.villagename",
                "responsible.address"
            ])
                .leftJoin("responsible.work", "work")
                .leftJoin("responsible.user", "user")
                .leftJoin("user.hospital", "hospital")
                .leftJoin("user.position", "position")
                .leftJoin("responsible.village", "village")
                .leftJoin("village.tambon", "tambon")
                .leftJoin("tambon.amphur", "amphur")
                .leftJoin("amphur.changwat", "changwat")
                .where("responsible.r_villagecodefull like :r_villagecodefull", { r_villagecodefull: code.codefull + '%' })
                .orderBy("responsible.r_villagecodefull")
                .getMany();
            return user_responcibles;
        });
    }
    addResponsible(body) {
        return __awaiter(this, void 0, void 0, function* () {
            const count = yield this.responsibleRepository.count({
                r_id_user: body.r_id_user,
                r_villagecode: body.r_villagecode,
                r_villagecodefull: body.r_villagecodefull,
                id_work: body.id_work,
                address: body.address,
            });
            if (count > 0)
                throw new common_1.BadRequestException('มีงานนี้ในระบบแล้ว');
            let model = body;
            model.date_created = new Date();
            model.date_updated = model.date_created;
            const modelItem = yield this.responsibleRepository.save(model);
            return modelItem;
        });
    }
    updateResponsible(body) {
        return __awaiter(this, void 0, void 0, function* () {
            const responsible = yield this.responsibleRepository.findOne({
                r_id_user: body.r_id_user,
                r_villagecode: body.r_villagecode,
                r_villagecodefull: body.r_villagecodefull,
                id_work: body.id_work,
                address: body.address,
            });
            if (responsible && responsible.id_responsible != body.id_responsible)
                throw new common_1.BadRequestException('มีงานนี้ในระบบแล้ว');
            let model = body;
            model.date_updated = new Date();
            const modelItem = yield this.responsibleRepository.update({
                id_responsible: model.id_responsible
            }, model);
            return modelItem;
        });
    }
    deleteResponsible(responsible) {
        return __awaiter(this, void 0, void 0, function* () {
            console.log(responsible.id_responsible);
            return yield this.responsibleRepository.delete({ id_responsible: responsible.id_responsible })
                .catch(err => { throw new common_1.BadRequestException(err); });
            ;
        });
    }
};
ResponsibleService = __decorate([
    common_1.Injectable(),
    __param(0, typeorm_1.InjectRepository(user_entity_1.EUser)),
    __param(1, typeorm_1.InjectRepository(responsible_entity_1.EResponsible)),
    __metadata("design:paramtypes", [typeorm_2.Repository,
        typeorm_2.Repository])
], ResponsibleService);
exports.ResponsibleService = ResponsibleService;
//# sourceMappingURL=responsible.service.js.map