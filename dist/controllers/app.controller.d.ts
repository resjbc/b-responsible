import { AppService } from '../services/app.service';
import { RegisterBody, LoginBody } from '../models/entitys/user.entity';
export declare class AppController {
    private readonly appService;
    constructor(appService: AppService);
    root(): string;
    Login(body: LoginBody): Promise<{
        accessToken: string;
    }>;
    register(body: RegisterBody): Promise<import("../interfaces/app.interface").IAccount & import("../models/entitys/user.entity").EUser>;
}
