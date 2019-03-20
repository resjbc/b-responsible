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
const list_detail_service_1 = require("../services/list_detail.service");
let ListDetailController = class ListDetailController {
    constructor(list_detailService) {
        this.list_detailService = list_detailService;
    }
    getAmphurs() {
        return this.list_detailService.getAmphurs();
    }
    getTambons(amphurcode) {
        return this.list_detailService.getTambons(amphurcode.amphurcode);
    }
    getVillages(tamboncode) {
        return this.list_detailService.getVillages(tamboncode.tamboncode);
    }
    getHospitals(amphurcode, changwatcode) {
        return this.list_detailService.getHospitals(amphurcode, changwatcode);
    }
    getPositions() {
        return this.list_detailService.getPositions();
    }
};
__decorate([
    common_1.Get("amphurs"),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", []),
    __metadata("design:returntype", void 0)
], ListDetailController.prototype, "getAmphurs", null);
__decorate([
    common_1.Get("tambons/:amphurcode"),
    __param(0, common_1.Param()),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [Object]),
    __metadata("design:returntype", void 0)
], ListDetailController.prototype, "getTambons", null);
__decorate([
    common_1.Get("villages/:tamboncode"),
    __param(0, common_1.Param()),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [Object]),
    __metadata("design:returntype", void 0)
], ListDetailController.prototype, "getVillages", null);
__decorate([
    common_1.Get("hospitals"),
    __param(0, common_1.Query('amphurcode')), __param(1, common_1.Query('changwatcode')),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [Object, Object]),
    __metadata("design:returntype", void 0)
], ListDetailController.prototype, "getHospitals", null);
__decorate([
    common_1.Get("positions"),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", []),
    __metadata("design:returntype", void 0)
], ListDetailController.prototype, "getPositions", null);
ListDetailController = __decorate([
    common_1.Controller('list'),
    __metadata("design:paramtypes", [list_detail_service_1.ListDetailService])
], ListDetailController);
exports.ListDetailController = ListDetailController;
//# sourceMappingURL=list_detail.controller.js.map