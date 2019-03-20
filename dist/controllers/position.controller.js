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
Object.defineProperty(exports, "__esModule", { value: true });
const position_entity_1 = require("./../models/entitys/position.entity");
const position_service_1 = require("./../services/position.service");
const common_1 = require("@nestjs/common");
const validation_pipe_1 = require("../pipes/validation.pipe");
const passport_1 = require("@nestjs/passport");
const role_gurad_1 = require("../guards/role.gurad");
const app_interface_1 = require("../interfaces/app.interface");
let PositionController = class PositionController {
    constructor(positionService) {
        this.positionService = positionService;
    }
    getWorks() {
        return this.positionService.getPositions();
    }
    deleteWork(param) {
        return this.positionService.deletePosition(param);
    }
    addWork(body) {
        return this.positionService.addAndupdatePosition(body);
    }
    updateWork(body) {
        return this.positionService.addAndupdatePosition(body);
    }
};
__decorate([
    common_1.Get(),
    common_1.UseGuards(new role_gurad_1.RoleGuard(app_interface_1.RoleAccount.Member, app_interface_1.RoleAccount.Employee, app_interface_1.RoleAccount.Admin)),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", []),
    __metadata("design:returntype", void 0)
], PositionController.prototype, "getWorks", null);
__decorate([
    common_1.Delete(':id_position'),
    common_1.UseGuards(new role_gurad_1.RoleGuard(app_interface_1.RoleAccount.Employee, app_interface_1.RoleAccount.Admin)),
    __param(0, common_1.Param(new validation_pipe_1.ValidationPipe())),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [position_entity_1.ParamDeletePosition]),
    __metadata("design:returntype", void 0)
], PositionController.prototype, "deleteWork", null);
__decorate([
    common_1.Post(),
    common_1.UseGuards(new role_gurad_1.RoleGuard(app_interface_1.RoleAccount.Employee, app_interface_1.RoleAccount.Admin)),
    __param(0, common_1.Body(new validation_pipe_1.ValidationPipe())),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [position_entity_1.ParamPosition]),
    __metadata("design:returntype", void 0)
], PositionController.prototype, "addWork", null);
__decorate([
    common_1.Put(),
    common_1.UseGuards(new role_gurad_1.RoleGuard(app_interface_1.RoleAccount.Employee, app_interface_1.RoleAccount.Admin)),
    __param(0, common_1.Body(new validation_pipe_1.ValidationPipe())),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [position_entity_1.ParamPosition]),
    __metadata("design:returntype", void 0)
], PositionController.prototype, "updateWork", null);
PositionController = __decorate([
    common_1.Controller('position'),
    common_1.UseGuards(passport_1.AuthGuard('jwt')),
    __metadata("design:paramtypes", [position_service_1.PositionService])
], PositionController);
exports.PositionController = PositionController;
//# sourceMappingURL=position.controller.js.map