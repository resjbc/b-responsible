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
const tambon_entity_1 = require("./tambon.entity");
let EVillage = class EVillage {
};
__decorate([
    typeorm_1.PrimaryColumn('varchar', { length: "2", nullable: false }),
    __metadata("design:type", String)
], EVillage.prototype, "villagecode", void 0);
__decorate([
    typeorm_1.PrimaryColumn('varchar', { length: "8", nullable: false }),
    __metadata("design:type", String)
], EVillage.prototype, "villagecodefull", void 0);
__decorate([
    typeorm_1.PrimaryColumn('varchar', { length: "6", nullable: false }),
    __metadata("design:type", String)
], EVillage.prototype, "tamboncode", void 0);
__decorate([
    typeorm_1.PrimaryColumn('varchar', { length: "4", nullable: false }),
    __metadata("design:type", String)
], EVillage.prototype, "ampurcode", void 0);
__decorate([
    typeorm_1.PrimaryColumn('varchar', { length: "2", nullable: false }),
    __metadata("design:type", String)
], EVillage.prototype, "changwatcode", void 0);
__decorate([
    typeorm_1.Column({ length: "255", nullable: true }),
    __metadata("design:type", String)
], EVillage.prototype, "villagename", void 0);
__decorate([
    typeorm_1.Column({ length: "1", nullable: true }),
    __metadata("design:type", String)
], EVillage.prototype, "flag_status", void 0);
__decorate([
    typeorm_1.OneToMany(type => responsible_entity_1.EResponsible, responsible => responsible.village),
    __metadata("design:type", Array)
], EVillage.prototype, "responsibles", void 0);
__decorate([
    typeorm_1.ManyToOne(type => tambon_entity_1.ETambon, tambon => tambon.villages),
    typeorm_1.JoinColumn({ name: 'tamboncode', referencedColumnName: 'tamboncodefull' }),
    __metadata("design:type", tambon_entity_1.ETambon)
], EVillage.prototype, "tambon", void 0);
EVillage = __decorate([
    typeorm_1.Entity('cvillage_responsible')
], EVillage);
exports.EVillage = EVillage;
//# sourceMappingURL=village.entity.js.map