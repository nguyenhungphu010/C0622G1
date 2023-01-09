import {Product} from './product';
import {Order} from './order';

export interface Cart {
  id?: number;
  quantity?: number;
  user?: any;
  product?: Product;
  status?: boolean;
  order: Order;
}
