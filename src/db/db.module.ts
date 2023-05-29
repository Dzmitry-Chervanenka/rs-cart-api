import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import {Cart} from "./entities/cart";
import {CartItem} from "./entities/cart-item";

@Module({
    imports: [
        TypeOrmModule.forRoot({
            type: 'postgres',
            host: 'soccer-shop-database.ctduoamammnl.us-west-2.rds.amazonaws.com',
            port: 5432,
            username: 'postgres',
            password: 'VS4sBpqDowGM3MjMYo6H',
            database: 'lesson8',
            entities: [Cart, CartItem],
            synchronize: true,
            logging: true
        }),
        TypeOrmModule.forFeature([Cart, CartItem]),
    ],
})
export class DBModule {}