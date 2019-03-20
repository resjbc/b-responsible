"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const typeOrmConfig = {
    type: 'mysql',
    host: '203.157.237.77',
    port: 3309,
    username: 'root',
    password: 'mysql',
    database: 'responsible',
    synchronize: true,
    logging: true,
    entities: ["dist/models/entitys/**/*.js"]
};
exports.typeOrmConfig = typeOrmConfig;
//# sourceMappingURL=config.js.map