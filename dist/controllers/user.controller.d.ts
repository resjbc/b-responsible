import { PositionService } from './../services/position.service';
import { UserService } from "../services/user.service";
import { ParamUser, AccountBody } from "../models/entitys/user.entity";
export declare class UserController {
    private readonly userService;
    private readonly positionService;
    constructor(userService: UserService, positionService: PositionService);
    getResponcible(): Promise<import("../models/entitys/user.entity").EUser[]>;
    getUsers(): Promise<import("../models/entitys/user.entity").EUser[]>;
    getUser(param: ParamUser): Promise<import("../models/entitys/user.entity").EUser>;
    deleteUser(param: ParamUser): Promise<import("typeorm").DeleteResult>;
    addUser(body: AccountBody): Promise<import("../interfaces/app.interface").IAccount & import("../models/entitys/user.entity").EUser>;
    updateUser(body: AccountBody): Promise<import("typeorm").UpdateResult>;
}
