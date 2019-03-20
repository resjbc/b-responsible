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
const typeorm_1 = require("typeorm");
const typeorm_2 = require("@nestjs/typeorm");
const user_entity_1 = require("../models/entitys/user.entity");
let AccountService = class AccountService {
    constructor(userRepository) {
        this.userRepository = userRepository;
    }
    onChangePassword(id_user, body) {
        return __awaiter(this, void 0, void 0, function* () {
            const memberItem = yield this.userRepository.findOne({ id_user: id_user });
            if (body.old_pass != memberItem.password)
                throw new common_1.BadRequestException('รหัสผ่านเดิมไม่ถูกต้อง');
            const updated = yield this.userRepository.update({ id_user: id_user }, {
                password: body.new_pass
            });
            return updated;
        });
    }
    onUpdateAccount(id_user, body) {
        return __awaiter(this, void 0, void 0, function* () {
            if (this.validateIdCard(body.cid))
                throw new common_1.BadRequestException('ตรวจสอบหมายเลขบัตรประชาชน');
            const memberItem = yield this.userRepository.findOne({ cid: body.cid });
            if (memberItem && memberItem.cid === body.cid && memberItem.id_user !== id_user)
                throw new common_1.BadRequestException('มีหมายเลขบัตรประชาชนนี้ในระบบแล้ว');
            const memberItem_ = yield this.userRepository.findOne({ username: body.username });
            if (memberItem_ && memberItem_.username === body.username && memberItem_.id_user !== id_user)
                throw new common_1.BadRequestException('มี Username นี้ในระบบแล้ว');
            body.date_updated = new Date();
            const updated = yield this.userRepository.update({ id_user: id_user }, body);
            return updated;
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
AccountService = __decorate([
    common_1.Injectable(),
    __param(0, typeorm_2.InjectRepository(user_entity_1.EUser)),
    __metadata("design:paramtypes", [typeorm_1.Repository])
], AccountService);
exports.AccountService = AccountService;
//# sourceMappingURL=account.service.js.map