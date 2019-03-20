import { EUser } from "./user.entity";
export declare class EPosition {
    id_position?: number;
    position: string;
    active: boolean;
    users: EUser[];
}
export declare class ParamDeletePosition {
    id_position?: any;
}
export declare class ParamPosition {
    id_position?: any;
    position: string;
    active?: boolean;
}
