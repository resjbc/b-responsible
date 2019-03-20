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
let EHospital = class EHospital {
};
__decorate([
    typeorm_1.PrimaryColumn('char', { length: "5", nullable: false }),
    typeorm_1.Index("hoscode"),
    __metadata("design:type", String)
], EHospital.prototype, "hoscode", void 0);
__decorate([
    typeorm_1.Column({ length: "255", nullable: true }),
    __metadata("design:type", String)
], EHospital.prototype, "hosname", void 0);
__decorate([
    typeorm_1.Column({ type: "char", length: "2", nullable: true }),
    __metadata("design:type", String)
], EHospital.prototype, "hostype", void 0);
__decorate([
    typeorm_1.Column({ type: "varchar", length: "50", nullable: true }),
    __metadata("design:type", String)
], EHospital.prototype, "address", void 0);
__decorate([
    typeorm_1.Column({ type: "varchar", length: "50", nullable: true }),
    __metadata("design:type", String)
], EHospital.prototype, "road", void 0);
__decorate([
    typeorm_1.Column({ type: "varchar", length: "2", nullable: true }),
    __metadata("design:type", String)
], EHospital.prototype, "mu", void 0);
__decorate([
    typeorm_1.Column({ type: "char", length: "2", nullable: true }),
    __metadata("design:type", String)
], EHospital.prototype, "subdistcode", void 0);
__decorate([
    typeorm_1.Column({ type: "char", length: "2", nullable: true }),
    __metadata("design:type", String)
], EHospital.prototype, "distcode", void 0);
__decorate([
    typeorm_1.Column({ type: "char", length: "2", nullable: true }),
    typeorm_1.Index("provcode"),
    __metadata("design:type", String)
], EHospital.prototype, "provcode", void 0);
__decorate([
    typeorm_1.Column({ type: "char", length: "5", nullable: true }),
    typeorm_1.Index("zipcode"),
    __metadata("design:type", String)
], EHospital.prototype, "postcode", void 0);
__decorate([
    typeorm_1.Column({ type: "char", length: "9", nullable: true }),
    __metadata("design:type", String)
], EHospital.prototype, "hoscodenew", void 0);
__decorate([
    typeorm_1.Column({ type: "char", length: "5", nullable: true }),
    __metadata("design:type", String)
], EHospital.prototype, "bed", void 0);
__decorate([
    typeorm_1.Column({ type: "varchar", length: "255", nullable: true }),
    __metadata("design:type", String)
], EHospital.prototype, "level_service", void 0);
__decorate([
    typeorm_1.Column({ type: "char", length: "5", nullable: true }),
    __metadata("design:type", String)
], EHospital.prototype, "bedhos", void 0);
__decorate([
    typeorm_1.Column({ type: "int", width: 200, nullable: true }),
    __metadata("design:type", String)
], EHospital.prototype, "hdc_regist", void 0);
__decorate([
    typeorm_1.Column({ type: "varchar", length: "5", nullable: true }),
    __metadata("design:type", String)
], EHospital.prototype, "dep", void 0);
__decorate([
    typeorm_1.Column({ type: "char", length: "5", nullable: true }),
    __metadata("design:type", String)
], EHospital.prototype, "hmain_sent", void 0);
__decorate([
    typeorm_1.OneToMany(type => user_entity_1.EUser, user => user.hoscode),
    __metadata("design:type", Array)
], EHospital.prototype, "users", void 0);
EHospital = __decorate([
    typeorm_1.Entity('chospital_responsible'),
    typeorm_1.Index("changwatcode", ["provcode", "distcode", "subdistcode", "hoscode"])
], EHospital);
exports.EHospital = EHospital;
//# sourceMappingURL=hospital.entity.js.map