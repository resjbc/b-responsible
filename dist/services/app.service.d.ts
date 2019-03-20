import { ILogin, IRegister, IAccount } from '../interfaces/app.interface';
import { EUser } from '../models/entitys/user.entity';
import { Repository } from 'typeorm';
import { JwtAuthenService } from './jwt-authen.service';
export declare class AppService {
    private readonly userRepository;
    private authenService;
    constructor(userRepository: Repository<EUser>, authenService: JwtAuthenService);
    root(): string;
    onRegister(body: IRegister): Promise<IAccount & EUser>;
    onLogin(body: ILogin): Promise<{
        accessToken: string;
    }>;
    validateIdCard(cid: any): false | {
        cid: boolean;
    };
}
