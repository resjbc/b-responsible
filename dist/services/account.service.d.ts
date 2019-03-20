import { Repository } from "typeorm";
import { EUser } from "../models/entitys/user.entity";
import { IChangePassword, IAccount } from "../interfaces/app.interface";
export declare class AccountService {
    private readonly userRepository;
    constructor(userRepository: Repository<EUser>);
    onChangePassword(id_user: any, body: IChangePassword): Promise<import("typeorm").UpdateResult>;
    onUpdateAccount(id_user: any, body: IAccount): Promise<import("typeorm").UpdateResult>;
    validateIdCard(cid: any): false | {
        cid: boolean;
    };
}
