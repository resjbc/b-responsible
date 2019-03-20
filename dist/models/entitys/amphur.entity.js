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
const changwat_entity_1 = require("./changwat.entity");
const tambon_entity_1 = require("./tambon.entity");
let EAmphur = class EAmphur {
};
__decorate([
    typeorm_1.PrimaryColumn('varchar', { length: "2", nullable: false }),
    __metadata("design:type", String)
], EAmphur.prototype, "ampurcode", void 0);
__decorate([
    typeorm_1.PrimaryColumn('varchar', { length: "4", nullable: false }),
    __metadata("design:type", String)
], EAmphur.prototype, "ampurcodefull", void 0);
__decorate([
    typeorm_1.PrimaryColumn('varchar', { length: "2", nullable: false }),
    __metadata("design:type", String)
], EAmphur.prototype, "changwatcode", void 0);
__decorate([
    typeorm_1.Column({ length: "255", nullable: true }),
    __metadata("design:type", String)
], EAmphur.prototype, "ampurname", void 0);
__decorate([
    typeorm_1.Column({ length: "1", nullable: true }),
    __metadata("design:type", String)
], EAmphur.prototype, "flag_status", void 0);
__decorate([
    typeorm_1.ManyToOne(type => changwat_entity_1.EChangwat, changwat => changwat.amphurs),
    typeorm_1.JoinColumn({ name: 'changwatcode' }),
    __metadata("design:type", changwat_entity_1.EChangwat)
], EAmphur.prototype, "changwat", void 0);
__decorate([
    typeorm_1.OneToMany(type => tambon_entity_1.ETambon, tombon => tombon.amphur),
    __metadata("design:type", Array)
], EAmphur.prototype, "tambons", void 0);
EAmphur = __decorate([
    typeorm_1.Entity('campur_responsible'),
    typeorm_1.Index(["ampurcodefull"])
], EAmphur);
exports.EAmphur = EAmphur;
//# sourceMappingURL=amphur.entity.js.map