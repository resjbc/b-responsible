import { IAccount } from "./app.interface";
export interface IAuthen {
    generateAccessToken(member: IAccount): Promise<string>;
    validateUser(accessToken: any): Promise<IAccount>;
}
