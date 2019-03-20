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
let EChangwat = class EChangwat {
};
__decorate([
    typeorm_1.PrimaryColumn('varchar', { length: "2", nullable: false }),
    __metadata("design:type", String)
], EChangwat.prototype, "changwatcode", void 0);
__decorate([
    typeorm_1.Column({ length: "255", nullable: true }),
    __metadata("design:type", String)
], EChangwat.prototype, "changwatname", void 0);
__decorate([
    typeorm_1.Column({ length: "2", nullable: true }),
    __metadata("design:type", String)
], EChangwat.prototype, "zonecode", void 0);
__decorate([
    typeorm_1.OneToMany(type => amphur_entity_1.EAmphur, amphur => amphur.changwat),
    __metadata("design:type", Array)
], EChangwat.prototype, "amphurs", void 0);
EChangwat = __decorate([
    typeorm_1.Entity('cchangwat_responsible')
], EChangwat);
exports.EChangwat = EChangwat;
//# sourceMappingURL=changwat.entity.js.map