import { Cart } from "src/db/entities/cart";
import { CartItem } from "src/db/entities/cart-item";

/**
 * @param {Cart} cart
 * @returns {number}
 */
export function calculateCartTotal(cart: Cart): number {
  return cart ? cart.items?.reduce((acc: number, { count }: CartItem) => {
    return acc += 5 * count;
  }, 0) : 0;
}