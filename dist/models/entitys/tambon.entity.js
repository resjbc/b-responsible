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
const amphur_entity_1 = require("./amphur.entity");
const village_entity_1 = require("./village.entity");
let ETambon = class ETambon {
};
__decorate([
    typeorm_1.PrimaryColumn('varchar', { length: "2", nullable: false }),
    __metadata("design:type", String)
], ETambon.prototype, "tamboncode", void 0);
__decorate([
    typeorm_1.PrimaryColumn('varchar', { length: "6", nullable: false }),
    __metadata("design:type", String)
], ETambon.prototype, "tamboncodefull", void 0);
__decorate([
    typeorm_1.PrimaryColumn('varchar', { length: "4", nullable: false }),
    __metadata("design:type", String)
], ETambon.prototype, "ampurcode", void 0);
__decorate([
    typeorm_1.PrimaryColumn('varchar', { length: "2", nullable: false }),
    __metadata("design:type", String)
], ETambon.prototype, "changwatcode", void 0);
__decorate([
    typeorm_1.Column({ length: "255", nullable: true }),
    __metadata("design:type", String)
], ETambon.prototype, "tambonname", void 0);
__decorate([
    typeorm_1.Column({ length: "2", nullable: true }),
    __metadata("design:type", String)
], ETambon.prototype, "flag_status", void 0);
__decorate([
    typeorm_1.ManyToOne(type => amphur_entity_1.EAmphur, amphur => amphur.tambons),
    typeorm_1.JoinColumn({ name: 'ampurcode', referencedColumnName: 'ampurcodefull' }),
    __metadata("design:type", amphur_entity_1.EAmphur)
], ETambon.prototype, "amphur", void 0);
__decorate([
    typeorm_1.OneToMany(type => village_entity_1.EVillage, village => village.tambon),
    __metadata("design:type", Array)
], ETambon.prototype, "villages", void 0);
ETambon = __decorate([
    typeorm_1.Entity('ctambon_responsible'),
    typeorm_1.Index(["tamboncodefull"])
], ETambon);
exports.ETambon = ETambon;
//# sourceMappingURL=tambon.entity.js.map