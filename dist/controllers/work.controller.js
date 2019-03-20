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
const work_service_1 = require("../services/work.service");
const validation_pipe_1 = require("../pipes/validation.pipe");
const work_entity_1 = require("../models/entitys/work.entity");
const passport_1 = require("@nestjs/passport");
const role_gurad_1 = require("../guards/role.gurad");
const app_interface_1 = require("../interfaces/app.interface");
let WorkController = class WorkController {
    constructor(workService) {
        this.workService = workService;
        workService.firstStart({
            work: "แม่และเด็ก",
            active: true
        });
    }
    getWorks() {
        return this.workService.getWorks();
    }
    deleteWork(param) {
        return this.workService.deleteWork(param);
    }
    addWork(body) {
        return this.workService.addAndupdateWork(body);
    }
    updateWork(body) {
        return this.workService.addAndupdateWork(body);
    }
};
__decorate([
    common_1.Get(),
    common_1.UseGuards(new role_gurad_1.RoleGuard(app_interface_1.RoleAccount.Member, app_interface_1.RoleAccount.Employee, app_interface_1.RoleAccount.Admin)),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", []),
    __metadata("design:returntype", void 0)
], WorkController.prototype, "getWorks", null);
__decorate([
    common_1.Delete(':id_work'),
    common_1.UseGuards(new role_gurad_1.RoleGuard(app_interface_1.RoleAccount.Employee, app_interface_1.RoleAccount.Admin)),
    __param(0, common_1.Param(new validation_pipe_1.ValidationPipe())),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [work_entity_1.ParamDeleteWork]),
    __metadata("design:returntype", void 0)
], WorkController.prototype, "deleteWork", null);
__decorate([
    common_1.Post(),
    common_1.UseGuards(new role_gurad_1.RoleGuard(app_interface_1.RoleAccount.Member, app_interface_1.RoleAccount.Employee, app_interface_1.RoleAccount.Admin)),
    __param(0, common_1.Body(new validation_pipe_1.ValidationPipe())),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [work_entity_1.ParamWork]),
    __metadata("design:returntype", void 0)
], WorkController.prototype, "addWork", null);
__decorate([
    common_1.Put(),
    common_1.UseGuards(new role_gurad_1.RoleGuard(app_interface_1.RoleAccount.Employee, app_interface_1.RoleAccount.Admin)),
    __param(0, common_1.Body(new validation_pipe_1.ValidationPipe())),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [work_entity_1.ParamWork]),
    __metadata("design:returntype", void 0)
], WorkController.prototype, "updateWork", null);
WorkController = __decorate([
    common_1.Controller('work'),
    common_1.UseGuards(passport_1.AuthGuard('jwt')),
    __metadata("design:paramtypes", [work_service_1.WorkService])
], WorkController);
exports.WorkController = WorkController;
//# sourceMappingURL=work.controller.js.map