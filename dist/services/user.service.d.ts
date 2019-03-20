import { Repository } from "typeorm";
import { EUser } from "../models/entitys/user.entity";
import { EResponsible } from "../models/entitys/responsible.entity";
import { IAccount } from "../interfaces/app.interface";
export declare class UserService {
    private readonly userRepository;
    private readonly responcibleRepository;
    constructor(userRepository: Repository<EUser>, responcibleRepository: Repository<EResponsible>);
    getUsers(): Promise<EUser[]>;
    getUser(user: any): Promise<EUser>;
    getResponcibles(): Promise<EUser[]>;
    deleteUser(user: any): Promise<import("typeorm").DeleteResult>;
    addUser(body: IAccount): Promise<IAccount & EUser>;
    updateUser(body: IAccount): Promise<import("typeorm").UpdateResult>;
    firstStart(user: any): Promise<void>;
    validateIdCard(cid: any): false | {
        cid: boolean;
    };
}
