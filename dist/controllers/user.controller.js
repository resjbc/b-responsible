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
const position_service_1 = require("./../services/position.service");
const common_1 = require("@nestjs/common");
const user_service_1 = require("../services/user.service");
const validation_pipe_1 = require("../pipes/validation.pipe");
const user_entity_1 = require("../models/entitys/user.entity");
const passport_1 = require("@nestjs/passport");
const role_gurad_1 = require("../guards/role.gurad");
const app_interface_1 = require("../interfaces/app.interface");
let UserController = class UserController {
    constructor(userService, positionService) {
        this.userService = userService;
        this.positionService = positionService;
        this.positionService.firstStart({
            position: "นักวิชาการคอมพิวเตอร์",
            active: true
        }).then(() => {
            this.userService.firstStart({
                cid: 9999999999999,
                username: "admin",
                password: "adminssj",
                id_position: 1,
                hoscode: "00073",
                firstname: "admin",
                lastname: "ssj",
                role: 3,
                date_created: new Date(),
                date_updated: new Date()
            });
        }).catch();
    }
    getResponcible() {
        return this.userService.getResponcibles();
    }
    getUsers() {
        return this.userService.getUsers();
    }
    getUser(param) {
        return this.userService.getUser(param);
    }
    deleteUser(param) {
        return this.userService.deleteUser(param);
    }
    addUser(body) {
        return this.userService.addUser(body);
    }
    updateUser(body) {
        return this.userService.updateUser(body);
    }
};
__decorate([
    common_1.Get("responsible"),
    common_1.UseGuards(new role_gurad_1.RoleGuard(app_interface_1.RoleAccount.Employee, app_interface_1.RoleAccount.Admin)),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", []),
    __metadata("design:returntype", void 0)
], UserController.prototype, "getResponcible", null);
__decorate([
    common_1.Get("users"),
    common_1.UseGuards(new role_gurad_1.RoleGuard(app_interface_1.RoleAccount.Admin)),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", []),
    __metadata("design:returntype", void 0)
], UserController.prototype, "getUsers", null);
__decorate([
    common_1.Get(":id_user"),
    common_1.UseGuards(new role_gurad_1.RoleGuard(app_interface_1.RoleAccount.Admin)),
    __param(0, common_1.Param(new validation_pipe_1.ValidationPipe())),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [user_entity_1.ParamUser]),
    __metadata("design:returntype", void 0)
], UserController.prototype, "getUser", null);
__decorate([
    common_1.Delete(':id_user'),
    common_1.UseGuards(new role_gurad_1.RoleGuard(app_interface_1.RoleAccount.Admin)),
    __param(0, common_1.Param(new validation_pipe_1.ValidationPipe())),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [user_entity_1.ParamUser]),
    __metadata("design:returntype", void 0)
], UserController.prototype, "deleteUser", null);
__decorate([
    common_1.Post(),
    common_1.UseGuards(new role_gurad_1.RoleGuard(app_interface_1.RoleAccount.Admin)),
    __param(0, common_1.Body(new validation_pipe_1.ValidationPipe())),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [user_entity_1.AccountBody]),
    __metadata("design:returntype", void 0)
], UserController.prototype, "addUser", null);
__decorate([
    common_1.Put(),
    common_1.UseGuards(new role_gurad_1.RoleGuard(app_interface_1.RoleAccount.Admin)),
    __param(0, common_1.Body(new validation_pipe_1.ValidationPipe())),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [user_entity_1.AccountBody]),
    __metadata("design:returntype", void 0)
], UserController.prototype, "updateUser", null);
UserController = __decorate([
    common_1.Controller('user'),
    common_1.UseGuards(passport_1.AuthGuard('jwt')),
    __metadata("design:paramtypes", [user_service_1.UserService,
        position_service_1.PositionService])
], UserController);
exports.UserController = UserController;
//# sourceMappingURL=user.controller.js.map