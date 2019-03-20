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
const common_1 = require("@nestjs/common");
const responsible_service_1 = require("../services/responsible.service");
const validation_pipe_1 = require("../pipes/validation.pipe");
const user_entity_1 = require("../models/entitys/user.entity");
const responsible_entity_1 = require("../models/entitys/responsible.entity");
const passport_1 = require("@nestjs/passport");
const role_gurad_1 = require("../guards/role.gurad");
const app_interface_1 = require("../interfaces/app.interface");
let ResponsibleController = class ResponsibleController {
    constructor(responsibleService) {
        this.responsibleService = responsibleService;
    }
    getResponsible(param) {
        return this.responsibleService.getResponsible(param);
    }
    getResponsible_search(param) {
        return this.responsibleService.getResponsible_search(param);
    }
    addResponsible(body) {
        return this.responsibleService.addResponsible(body);
    }
    updateResponsible(body) {
        return this.responsibleService.updateResponsible(body);
    }
    deleteResponsible(param) {
        return this.responsibleService.deleteResponsible(param);
    }
};
__decorate([
    common_1.Get(":id_user"),
    common_1.UseGuards(new role_gurad_1.RoleGuard(app_interface_1.RoleAccount.Member, app_interface_1.RoleAccount.Employee, app_interface_1.RoleAccount.Admin)),
    __param(0, common_1.Param(new validation_pipe_1.ValidationPipe())),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [user_entity_1.ParamUser]),
    __metadata("design:returntype", void 0)
], ResponsibleController.prototype, "getResponsible", null);
__decorate([
    common_1.Get("search/:codefull"),
    common_1.UseGuards(new role_gurad_1.RoleGuard(app_interface_1.RoleAccount.Employee, app_interface_1.RoleAccount.Admin)),
    __param(0, common_1.Param(new validation_pipe_1.ValidationPipe())),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [responsible_entity_1.ParamResponsibleSearch]),
    __metadata("design:returntype", void 0)
], ResponsibleController.prototype, "getResponsible_search", null);
__decorate([
    common_1.Post(),
    common_1.UseGuards(new role_gurad_1.RoleGuard(app_interface_1.RoleAccount.Member, app_interface_1.RoleAccount.Employee, app_interface_1.RoleAccount.Admin)),
    __param(0, common_1.Body(new validation_pipe_1.ValidationPipe())),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [responsible_entity_1.ResponsibleBody]),
    __metadata("design:returntype", void 0)
], ResponsibleController.prototype, "addResponsible", null);
__decorate([
    common_1.Put(),
    common_1.UseGuards(new role_gurad_1.RoleGuard(app_interface_1.RoleAccount.Member, app_interface_1.RoleAccount.Employee, app_interface_1.RoleAccount.Admin)),
    __param(0, common_1.Body(new validation_pipe_1.ValidationPipe())),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [responsible_entity_1.ResponsibleBody]),
    __metadata("design:returntype", void 0)
], ResponsibleController.prototype, "updateResponsible", null);
__decorate([
    common_1.Delete(':id_responsible'),
    common_1.UseGuards(new role_gurad_1.RoleGuard(app_interface_1.RoleAccount.Member, app_interface_1.RoleAccount.Employee, app_interface_1.RoleAccount.Admin)),
    __param(0, common_1.Param(new validation_pipe_1.ValidationPipe())),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [responsible_entity_1.ParamResponsible]),
    __metadata("design:returntype", void 0)
], ResponsibleController.prototype, "deleteResponsible", null);
ResponsibleController = __decorate([
    common_1.Controller('responsible'),
    common_1.UseGuards(passport_1.AuthGuard('jwt')),
    __metadata("design:paramtypes", [responsible_service_1.ResponsibleService])
], ResponsibleController);
exports.ResponsibleController = ResponsibleController;
//# sourceMappingURL=responsible.controller.js.map