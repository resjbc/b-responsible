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
const user_entity_1 = require("../models/entitys/user.entity");
const responsible_entity_1 = require("../models/entitys/responsible.entity");
const app_interface_1 = require("../interfaces/app.interface");
let UserService = class UserService {
    constructor(userRepository, responcibleRepository) {
        this.userRepository = userRepository;
        this.responcibleRepository = responcibleRepository;
    }
    getUsers() {
        return __awaiter(this, void 0, void 0, function* () {
            const users = yield this.userRepository.createQueryBuilder('user')
                .select().orderBy("user.id_user", "DESC").getMany();
            if (!users)
                throw new common_1.BadRequestException('ไม่มีบุคคลในระบบ');
            return users;
        });
    }
    getUser(user) {
        return __awaiter(this, void 0, void 0, function* () {
            const users = yield this.userRepository.createQueryBuilder('user')
                .select()
                .where("role != 3")
                .andWhere("user.id_user = :id_user", { id_user: user.id_user }).getOne();
            if (!users)
                throw new common_1.BadRequestException('ไม่มีบุคคลในระบบ');
            return users;
        });
    }
    getResponcibles() {
        return __awaiter(this, void 0, void 0, function* () {
            const user_responcibles = yield this.userRepository.createQueryBuilder('user')
                .select([
                "user.firstname",
                "user.lastname",
                "user.cid",
                "user.hoscode",
                "user.role",
                "responsible.r_id_user",
                "responsible.address",
                "work.work",
                "village.villagename",
                "tambon.tambonname",
                "amphur.ampurname",
                "changwat.changwatname",
                "hospital.hosname",
                "position.position"
            ])
                .leftJoin("user.responsibles", "responsible")
                .leftJoin("user.position", "position")
                .leftJoin("user.hospital", "hospital")
                .leftJoin("responsible.work", "work")
                .leftJoin("responsible.village", "village")
                .leftJoin("village.tambon", "tambon")
                .leftJoin("tambon.amphur", "amphur")
                .leftJoin("amphur.changwat", "changwat")
                .getMany();
            return user_responcibles;
        });
    }
    deleteUser(user) {
        return __awaiter(this, void 0, void 0, function* () {
            return yield this.userRepository.delete(user)
                .catch(err => { throw new common_1.BadRequestException(err); });
            ;
        });
    }
    addUser(body) {
        return __awaiter(this, void 0, void 0, function* () {
            if (this.validateIdCard(body.cid))
                throw new common_1.BadRequestException('ตรวจสอบหมายเลขบัตรประชาชน');
            const count = yield this.userRepository.count({ username: body.username });
            if (count > 0)
                throw new common_1.BadRequestException('มี Username นี้ในระบบแล้ว');
            const count_ = yield this.userRepository.count({ cid: body.cid });
            if (count_ > 0)
                throw new common_1.BadRequestException('มีหมายเลขบัตรประชาชนนี้ในระบบแล้ว');
            let model = body;
            model.role = app_interface_1.RoleAccount.Member;
            model.flag_active = true;
            model.date_created = new Date();
            model.date_updated = new Date();
            const modelItem = yield this.userRepository.save(model);
            modelItem.password = '';
            return modelItem;
        });
    }
    updateUser(body) {
        return __awaiter(this, void 0, void 0, function* () {
            if (!body.id_user)
                throw new common_1.BadRequestException('ตรวจสอบข้อมูล');
            else if (this.validateIdCard(body.cid))
                throw new common_1.BadRequestException('ตรวจสอบหมายเลขบัตรประชาชน');
            const memberItem = yield this.userRepository.findOne({ cid: body.cid });
            if (memberItem && memberItem.cid === body.cid && memberItem.id_user != body.id_user)
                throw new common_1.BadRequestException('มีหมายเลขบัตรประชาชนนี้ในระบบแล้ว');
            const memberItem_ = yield this.userRepository.findOne({ username: body.username });
            if (memberItem_ && memberItem_.username === body.username && memberItem_.id_user != body.id_user)
                throw new common_1.BadRequestException('มี Username นี้ในระบบแล้ว');
            let model = body;
            model.date_updated = new Date();
            const modelItem = yield this.userRepository.update({ id_user: model.id_user }, model);
            return modelItem;
        });
    }
    firstStart(user) {
        return __awaiter(this, void 0, void 0, function* () {
            const user_ = yield this.userRepository.findOne({ cid: user.cid });
            if (!user_)
                yield this.userRepository.save(user);
        });
    }
    validateIdCard(cid) {
        let id = cid;
        let sum = 0;
        let total = 0;
        let digi = 13;
        for (let i = 0; i < 12; i++) {
            sum = sum + ((id[i]) * digi);
            digi--;
        }
        total = (11 - (sum % 11)) % 10;
        if (total != id[12])
            return { cid: true };
        return false;
    }
};
UserService = __decorate([
    common_1.Injectable(),
    __param(0, typeorm_1.InjectRepository(user_entity_1.EUser)),
    __param(1, typeorm_1.InjectRepository(responsible_entity_1.EResponsible)),
    __metadata("design:paramtypes", [typeorm_2.Repository,
        typeorm_2.Repository])
], UserService);
exports.UserService = UserService;
//# sourceMappingURL=user.service.js.map