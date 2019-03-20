
const  typeOrmConfig = {
    type: 'mysql',
    host: 'localhost',
    port: 3309,
    username: 'root',
    password: 'mysql',
    database: 'responsible',
    synchronize: true,
    logging: true,
    //entities: ["src/models/entitys/**/*.ts"]
    entities: ["dist/models/entitys/**/*.js"]

} as any;

export { typeOrmConfig };