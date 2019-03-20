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
Object.defineProperty(exports, "__esModule", { value: true });
const typeorm_1 = require("typeorm");
const responsible_entity_1 = require("./responsible.entity");
const hospital_entity_1 = require("./hospital.entity");
const position_entity_1 = require("./position.entity");
const class_validator_1 = require("class-validator");
const validation_pipe_1 = require("../../pipes/validation.pipe");
let EUser = class EUser {
};
__decorate([
    typeorm_1.PrimaryGeneratedColumn(),
    __metadata("design:type", String)
], EUser.prototype, "id_user", void 0);
__decorate([
    typeorm_1.Column('varchar', { length: "255", nullable: false }),
    __metadata("design:type", String)
], EUser.prototype, "username", void 0);
__decorate([
    typeorm_1.Column('varchar', { length: "255", nullable: false }),
    __metadata("design:type", String)
], EUser.prototype, "password", void 0);
__decorate([
    typeorm_1.Column({ length: "255", nullable: true }),
    __metadata("design:type", String)
], EUser.prototype, "firstname", void 0);
__decorate([
    typeorm_1.Column({ length: "255", nullable: true }),
    __metadata("design:type", String)
], EUser.prototype, "lastname", void 0);
__decorate([
    typeorm_1.Column({ length: "255", nullable: true }),
    __metadata("design:type", String)
], EUser.prototype, "cid", void 0);
__decorate([
    typeorm_1.Column({ length: "5", nullable: true }),
    __metadata("design:type", String)
], EUser.prototype, "hoscode", void 0);
__decorate([
    typeorm_1.Column({ nullable: true }),
    __metadata("design:type", Number)
], EUser.prototype, "id_position", void 0);
__decorate([
    typeorm_1.Column({ nullable: true }),
    __metadata("design:type", Boolean)
], EUser.prototype, "flag_active", void 0);
__decorate([
    typeorm_1.Column(),
    __metadata("design:type", Date)
], EUser.prototype, "date_created", void 0);
__decorate([
    typeorm_1.Column(),
    __metadata("design:type", Date)
], EUser.prototype, "date_updated", void 0);
__decorate([
    typeorm_1.Column(),
    __metadata("design:type", Number)
], EUser.prototype, "role", void 0);
__decorate([
    typeorm_1.OneToMany(type => responsible_entity_1.EResponsible, responsible => responsible.user),
    __metadata("design:type", Array)
], EUser.prototype, "responsibles", void 0);
__decorate([
    typeorm_1.ManyToOne(type => hospital_entity_1.EHospital, hospital => hospital.users),
    typeorm_1.JoinColumn({ name: 'hoscode', referencedColumnName: "hoscode" }),
    __metadata("design:type", hospital_entity_1.EHospital)
], EUser.prototype, "hospital", void 0);
__decorate([
    typeorm_1.ManyToOne(type => position_entity_1.EPosition, position => position.users),
    typeorm_1.JoinColumn({ name: 'id_position', referencedColumnName: "id_position" }),
    __metadata("design:type", position_entity_1.EPosition)
], EUser.prototype, "position", void 0);
EUser = __decorate([
    typeorm_1.Entity('user_responsible')
], EUser);
exports.EUser = EUser;
class RegisterBody {
}
__decorate([
    class_validator_1.Matches(/^[0-9]{13,13}$/, { message: "ตรวจสอบ หมายเลขบัตรประชาชน" }),
    __metadata("design:type", Object)
], RegisterBody.prototype, "cid", void 0);
__decorate([
    class_validator_1.IsNotEmpty({ message: 'กรุณากรอก Username' }),
    __metadata("design:type", String)
], RegisterBody.prototype, "username", void 0);
__decorate([
    class_validator_1.IsNotEmpty(),
    __metadata("design:type", Number)
], RegisterBody.prototype, "id_position", void 0);
__decorate([
    class_validator_1.IsNotEmpty(),
    class_validator_1.Matches(/^[0-9]{5,5}$/),
    __metadata("design:type", String)
], RegisterBody.prototype, "hoscode", void 0);
__decorate([
    class_validator_1.IsNotEmpty(),
    __metadata("design:type", String)
], RegisterBody.prototype, "firstname", void 0);
__decorate([
    class_validator_1.IsNotEmpty(),
    __metadata("design:type", String)
], RegisterBody.prototype, "lastname", void 0);
__decorate([
    class_validator_1.IsNotEmpty(),
    class_validator_1.Matches(/^[A-z0-9]{6,15}$/),
    __metadata("design:type", String)
], RegisterBody.prototype, "password", void 0);
__decorate([
    class_validator_1.IsNotEmpty(),
    validation_pipe_1.IsComparePassword('password'),
    __metadata("design:type", String)
], RegisterBody.prototype, "cpassword", void 0);
exports.RegisterBody = RegisterBody;
class LoginBody {
}
__decorate([
    class_validator_1.IsNotEmpty(),
    __metadata("design:type", String)
], LoginBody.prototype, "username", void 0);
__decorate([
    class_validator_1.IsNotEmpty(),
    __metadata("design:type", String)
], LoginBody.prototype, "password", void 0);
exports.LoginBody = LoginBody;
class ChangePasswordBody {
}
__decorate([
    class_validator_1.IsNotEmpty(),
    __metadata("design:type", String)
], ChangePasswordBody.prototype, "old_pass", void 0);
__decorate([
    class_validator_1.IsNotEmpty(),
    class_validator_1.Matches(/^[A-z0-9]{6,15}$/),
    __metadata("design:type", String)
], ChangePasswordBody.prototype, "new_pass", void 0);
__decorate([
    class_validator_1.IsNotEmpty(),
    validation_pipe_1.IsComparePassword('new_pass'),
    __metadata("design:type", String)
], ChangePasswordBody.prototype, "cnew_pass", void 0);
exports.ChangePasswordBody = ChangePasswordBody;
class AccountBody {
}
__decorate([
    class_validator_1.Matches(/^[0-9]{13,13}$/, { message: "ตรวจสอบ หมายเลขบัตรประชาชน" }),
    __metadata("design:type", Object)
], AccountBody.prototype, "cid", void 0);
__decorate([
    class_validator_1.IsNotEmpty({ message: 'กรุณากรอก Username' }),
    __metadata("design:type", String)
], AccountBody.prototype, "username", void 0);
__decorate([
    class_validator_1.IsNotEmpty(),
    __metadata("design:type", Number)
], AccountBody.prototype, "id_position", void 0);
__decorate([
    class_validator_1.IsNotEmpty(),
    class_validator_1.Matches(/^[0-9]{5,5}$/),
    __metadata("design:type", String)
], AccountBody.prototype, "hoscode", void 0);
__decorate([
    class_validator_1.IsNotEmpty(),
    __metadata("design:type", String)
], AccountBody.prototype, "firstname", void 0);
__decorate([
    class_validator_1.IsNotEmpty(),
    __metadata("design:type", String)
], AccountBody.prototype, "lastname", void 0);
exports.AccountBody = AccountBody;
class ParamUser {
}
__decorate([
    class_validator_1.IsNotEmpty(),
    class_validator_1.IsNumberString(),
    __metadata("design:type", Object)
], ParamUser.prototype, "id_user", void 0);
exports.ParamUser = ParamUser;
//# sourceMappingURL=user.entity.js.map