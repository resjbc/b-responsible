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
const class_validator_1 = require("class-validator");
let EPosition = class EPosition {
};
__decorate([
    typeorm_1.PrimaryGeneratedColumn(),
    __metadata("design:type", Number)
], EPosition.prototype, "id_position", void 0);
__decorate([
    typeorm_1.Column('text'),
    __metadata("design:type", String)
], EPosition.prototype, "position", void 0);
__decorate([
    typeorm_1.Column(),
    __metadata("design:type", Boolean)
], EPosition.prototype, "active", void 0);
__decorate([
    typeorm_1.OneToMany(type => user_entity_1.EUser, user => user.position),
    __metadata("design:type", Array)
], EPosition.prototype, "users", void 0);
EPosition = __decorate([
    typeorm_1.Entity('cposition_responsible')
], EPosition);
exports.EPosition = EPosition;
class ParamDeletePosition {
}
__decorate([
    class_validator_1.IsNotEmpty(),
    class_validator_1.IsNumberString(),
    __metadata("design:type", Object)
], ParamDeletePosition.prototype, "id_position", void 0);
exports.ParamDeletePosition = ParamDeletePosition;
class ParamPosition {
}
__decorate([
    class_validator_1.IsNotEmpty(),
    __metadata("design:type", String)
], ParamPosition.prototype, "position", void 0);
exports.ParamPosition = ParamPosition;
//# sourceMappingURL=position.entity.js.map