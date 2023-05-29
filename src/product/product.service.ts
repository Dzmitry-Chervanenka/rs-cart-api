import { Injectable } from '@nestjs/common';
import products from "./products.mock";

export type Product = {
    id: string;
    title: string;
    description: string;
    price: number | string;
    image: string;
};
@Injectable()
export class ProductService {
    async findById(id: string): Promise<Product> {
        return products.find(product => product.id === id);
    }
}