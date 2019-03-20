import { IAccount } from "../interfaces/app.interface";
import { Request } from 'express';
import { ChangePasswordBody, AccountBody } from "../models/entitys/user.entity";
import { AccountService } from "../services/account.service";
export declare class AccountController {
    private readonly accountService;
    constructor(accountService: AccountService);
    getUserLogin(req: Request): IAccount;
    changePassword(req: Request, body: ChangePasswordBody): Promise<import("typeorm").UpdateResult>;
    updateAccount(req: Request, body: AccountBody): Promise<import("typeorm").UpdateResult>;
}
