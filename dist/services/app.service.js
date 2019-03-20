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
const app_interface_1 = require("../interfaces/app.interface");
const typeorm_1 = require("@nestjs/typeorm");
const user_entity_1 = require("../models/entitys/user.entity");
const typeorm_2 = require("typeorm");
const jwt_authen_service_1 = require("./jwt-authen.service");
let AppService = class AppService {
    constructor(userRepository, authenService) {
        this.userRepository = userRepository;
        this.authenService = authenService;
    }
    root() {
        return 'API_RESPONCIBLE';
    }
    onRegister(body) {
        return __awaiter(this, void 0, void 0, function* () {
            if (this.validateIdCard(body.cid))
                throw new common_1.BadRequestException('ตรวจสอบหมายเลขบัตรประชาชน');
            const count = yield this.userRepository.count({ username: body.username });
            if (count > 0)
                throw new common_1.BadRequestException('มี Username นี้ในระบบแล้ว');
            const count_ = yield this.userRepository.count({ cid: body.cid });
            if (count_ > 0)
                throw new common_1.BadRequestException('มีหมายเลขบัตรประชาชนนี้ในระบบแล้ว');
            delete body.cpassword;
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
    onLogin(body) {
        return __awaiter(this, void 0, void 0, function* () {
            const user = yield this.userRepository
                .createQueryBuilder('user')
                .select()
                .where("user.username = :username", { username: body.username })
                .getOne();
            if (!user)
                throw new common_1.BadRequestException('ไม่มีผู้ใช้งานนี้ในระบบ');
            if (body.password !== user.password)
                throw new common_1.BadRequestException('ชื่อผู้ใช้งานหรือรหัสผ่านไม่ถูกต้อง');
            user.password = "";
            return { accessToken: yield this.authenService.generateAccessToken(user) };
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
AppService = __decorate([
    common_1.Injectable(),
    __param(0, typeorm_1.InjectRepository(user_entity_1.EUser)),
    __metadata("design:paramtypes", [typeorm_2.Repository,
        jwt_authen_service_1.JwtAuthenService])
], AppService);
exports.AppService = AppService;
//# sourceMappingURL=app.service.js.map