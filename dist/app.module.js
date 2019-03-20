"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
Object.defineProperty(exports, "__esModule", { value: true });
const position_controller_1 = require("./controllers/position.controller");
const common_1 = require("@nestjs/common");
const app_controller_1 = require("./controllers/app.controller");
const app_service_1 = require("./services/app.service");
const config_1 = require("./config");
const typeorm_1 = require("@nestjs/typeorm");
const entity_module_1 = require("./models/entity.module");
const user_controller_1 = require("./controllers/user.controller");
const user_service_1 = require("./services/user.service");
const list_detail_service_1 = require("./services/list_detail.service");
const list_detail_controller_1 = require("./controllers/list_detail.controller");
const jwt_authen_service_1 = require("./services/jwt-authen.service");
const account_controller_1 = require("./controllers/account.controller");
const account_service_1 = require("./services/account.service");
const work_service_1 = require("./services/work.service");
const work_controller_1 = require("./controllers/work.controller");
const responsible_controller_1 = require("./controllers/responsible.controller");
const responsible_service_1 = require("./services/responsible.service");
const position_service_1 = require("./services/position.service");
let AppModule = class AppModule {
};
AppModule = __decorate([
    common_1.Module({
        imports: [typeorm_1.TypeOrmModule.forRoot(config_1.typeOrmConfig), entity_module_1.EntityModule],
        controllers: [
            app_controller_1.AppController,
            user_controller_1.UserController,
            list_detail_controller_1.ListDetailController,
            account_controller_1.AccountController,
            work_controller_1.WorkController,
            position_controller_1.PositionController,
            responsible_controller_1.ResponsibleController
        ],
        providers: [
            app_service_1.AppService,
            account_service_1.AccountService,
            user_service_1.UserService,
            work_service_1.WorkService,
            position_service_1.PositionService,
            responsible_service_1.ResponsibleService,
            list_detail_service_1.ListDetailService,
            jwt_authen_service_1.JwtAuthenService,
            jwt_authen_service_1.JwtAuthenStrategy
        ],
    })
], AppModule);
exports.AppModule = AppModule;
//# sourceMappingURL=app.module.js.map