
const  typeOrmConfig = {
    type: 'mysql',
    host: '203.157.237.20',
    port: 3309,
    username: 'root',
    password: 'ptn1234##',
    database: 'responsible',
    synchronize: true,
    logging: true,
    //entities: ["src/models/entitys/**/*.ts"]
    entities: ["dist/models/entitys/**/*.js"]

} as any;

export { typeOrmConfig };