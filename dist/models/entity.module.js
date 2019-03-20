"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
Object.defineProperty(exports, "__esModule", { value: true });
const common_1 = require("@nestjs/common");
const typeorm_1 = require("@nestjs/typeorm");
const amphur_entity_1 = require("./entitys/amphur.entity");
const changwat_entity_1 = require("./entitys/changwat.entity");
const tambon_entity_1 = require("./entitys/tambon.entity");
const village_entity_1 = require("./entitys/village.entity");
const hospital_entity_1 = require("./entitys/hospital.entity");
const user_entity_1 = require("./entitys/user.entity");
const responsible_entity_1 = require("./entitys/responsible.entity");
const work_entity_1 = require("./entitys/work.entity");
const position_entity_1 = require("./entitys/position.entity");
let EntityModule = class EntityModule {
};
EntityModule = __decorate([
    common_1.Module({
        imports: [
            typeorm_1.TypeOrmModule.forFeature([changwat_entity_1.EChangwat]),
            typeorm_1.TypeOrmModule.forFeature([amphur_entity_1.EAmphur]),
            typeorm_1.TypeOrmModule.forFeature([tambon_entity_1.ETambon]),
            typeorm_1.TypeOrmModule.forFeature([village_entity_1.EVillage]),
            typeorm_1.TypeOrmModule.forFeature([hospital_entity_1.EHospital]),
            typeorm_1.TypeOrmModule.forFeature([user_entity_1.EUser]),
            typeorm_1.TypeOrmModule.forFeature([work_entity_1.EWork]),
            typeorm_1.TypeOrmModule.forFeature([responsible_entity_1.EResponsible]),
            typeorm_1.TypeOrmModule.forFeature([position_entity_1.EPosition]),
        ],
        providers: [],
        controllers: [],
    })
], EntityModule);
exports.EntityModule = EntityModule;
//# sourceMappingURL=entity.module.js.map