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
const app_interface_1 = require("../interfaces/app.interface");
const validation_pipe_1 = require("../pipes/validation.pipe");
const user_entity_1 = require("../models/entitys/user.entity");
const passport_1 = require("@nestjs/passport");
const account_service_1 = require("../services/account.service");
const role_gurad_1 = require("../guards/role.gurad");
let AccountController = class AccountController {
    constructor(accountService) {
        this.accountService = accountService;
    }
    getUserLogin(req) {
        const userLogin = req.user;
        userLogin.password = '';
        return userLogin;
    }
    changePassword(req, body) {
        return this.accountService.onChangePassword(req.user.id_user, body);
    }
    updateAccount(req, body) {
        return this.accountService.onUpdateAccount(req.user.id_user, body);
    }
};
__decorate([
    common_1.Get('data'),
    __param(0, common_1.Req()),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [Object]),
    __metadata("design:returntype", void 0)
], AccountController.prototype, "getUserLogin", null);
__decorate([
    common_1.Post('change-password'),
    __param(0, common_1.Req()), __param(1, common_1.Body(new validation_pipe_1.ValidationPipe())),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [Object, user_entity_1.ChangePasswordBody]),
    __metadata("design:returntype", void 0)
], AccountController.prototype, "changePassword", null);
__decorate([
    common_1.Post('update-account'),
    __param(0, common_1.Req()), __param(1, common_1.Body(new validation_pipe_1.ValidationPipe())),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [Object, user_entity_1.AccountBody]),
    __metadata("design:returntype", void 0)
], AccountController.prototype, "updateAccount", null);
AccountController = __decorate([
    common_1.Controller('account'),
    common_1.UseGuards(passport_1.AuthGuard('jwt'), new role_gurad_1.RoleGuard(app_interface_1.RoleAccount.Member, app_interface_1.RoleAccount.Employee, app_interface_1.RoleAccount.Admin)),
    __metadata("design:paramtypes", [account_service_1.AccountService])
], AccountController);
exports.AccountController = AccountController;
//# sourceMappingURL=account.controller.js.map