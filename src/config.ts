
let typeOrmConfig = {
    type: 'mysql',
    host: 'localhost',
    port: 3306,
    username: 'root',
    password: '',
    database: 'responsible',
    synchronize: true,
    logging: true,
    entities: ["src/models/entitys/**/*.ts"]
    //entities: ["dist/models/entitys/**/*.js"]

};

export { typeOrmConfig };