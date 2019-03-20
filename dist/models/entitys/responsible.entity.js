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
const user_entity_1 = require("./user.entity");
const village_entity_1 = require("./village.entity");
const work_entity_1 = require("./work.entity");
const class_validator_1 = require("class-validator");
let EResponsible = class EResponsible {
};
__decorate([
    typeorm_1.PrimaryGeneratedColumn(),
    __metadata("design:type", String)
], EResponsible.prototype, "id_responsible", void 0);
__decorate([
    typeorm_1.PrimaryColumn(),
    __metadata("design:type", String)
], EResponsible.prototype, "r_id_user", void 0);
__decorate([
    typeorm_1.PrimaryColumn('varchar', { length: "2", nullable: false }),
    __metadata("design:type", String)
], EResponsible.prototype, "r_villagecode", void 0);
__decorate([
    typeorm_1.PrimaryColumn('varchar', { length: "8", nullable: false }),
    __metadata("design:type", String)
], EResponsible.prototype, "r_villagecodefull", void 0);
__decorate([
    typeorm_1.Column('varchar', { length: "255", nullable: true }),
    __metadata("design:type", String)
], EResponsible.prototype, "address", void 0);
__decorate([
    typeorm_1.PrimaryColumn(),
    __metadata("design:type", Number)
], EResponsible.prototype, "id_work", void 0);
__decorate([
    typeorm_1.Column(),
    __metadata("design:type", Date)
], EResponsible.prototype, "date_created", void 0);
__decorate([
    typeorm_1.Column(),
    __metadata("design:type", Date)
], EResponsible.prototype, "date_updated", void 0);
__decorate([
    typeorm_1.ManyToOne(type => user_entity_1.EUser, user => user.responsibles, {
        onDelete: "CASCADE"
    }),
    typeorm_1.JoinColumn({ name: 'r_id_user', referencedColumnName: 'id_user' }),
    __metadata("design:type", user_entity_1.EUser)
], EResponsible.prototype, "user", void 0);
__decorate([
    typeorm_1.ManyToOne(type => village_entity_1.EVillage, village => village.responsibles, {
        onDelete: "CASCADE"
    }),
    typeorm_1.JoinColumn({ name: 'r_villagecodefull', referencedColumnName: 'villagecodefull' }),
    typeorm_1.JoinColumn({ name: 'r_villagecode', referencedColumnName: 'villagecode' }),
    __metadata("design:type", village_entity_1.EVillage)
], EResponsible.prototype, "village", void 0);
__decorate([
    typeorm_1.ManyToOne(type => work_entity_1.EWork, work => work.responsibles, {
        onDelete: "CASCADE"
    }),
    typeorm_1.JoinColumn({ name: 'id_work', referencedColumnName: 'id_work' }),
    __metadata("design:type", work_entity_1.EWork)
], EResponsible.prototype, "work", void 0);
EResponsible = __decorate([
    typeorm_1.Entity('responsible_responsible')
], EResponsible);
exports.EResponsible = EResponsible;
class ResponsibleBody {
}
__decorate([
    class_validator_1.IsNotEmpty({ message: 'ตรวจสอบข้อมูล' }),
    class_validator_1.IsNumber(),
    __metadata("design:type", Number)
], ResponsibleBody.prototype, "r_id_user", void 0);
__decorate([
    class_validator_1.IsNotEmpty({ message: 'ตรวจสอบข้อมูล' }),
    __metadata("design:type", String)
], ResponsibleBody.prototype, "r_villagecode", void 0);
__decorate([
    class_validator_1.IsNotEmpty({ message: 'ตรวจสอบข้อมูล' }),
    __metadata("design:type", String)
], ResponsibleBody.prototype, "r_villagecodefull", void 0);
__decorate([
    class_validator_1.IsNotEmpty({ message: 'ตรวจสอบข้อมูล' }),
    class_validator_1.IsNumberString(),
    __metadata("design:type", Number)
], ResponsibleBody.prototype, "id_work", void 0);
exports.ResponsibleBody = ResponsibleBody;
class ParamResponsibleSearch {
}
__decorate([
    class_validator_1.IsNotEmpty(),
    class_validator_1.IsNumberString(),
    __metadata("design:type", Object)
], ParamResponsibleSearch.prototype, "codefull", void 0);
exports.ParamResponsibleSearch = ParamResponsibleSearch;
class ParamResponsible {
}
__decorate([
    class_validator_1.IsNotEmpty(),
    class_validator_1.IsNumberString(),
    __metadata("design:type", String)
], ParamResponsible.prototype, "id_responsible", void 0);
exports.ParamResponsible = ParamResponsible;
//# sourceMappingURL=responsible.entity.js.map