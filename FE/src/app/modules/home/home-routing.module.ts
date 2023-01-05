import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import {ProductListComponent} from './product-list/product-list.component';
import {ProductDetailComponent} from './product-detail/product-detail.component';
import {CartComponent} from './cart/cart.component';


const routes: Routes = [
  {
    path: 'list', component: ProductListComponent,
  },
  {
    path: 'detail', component: ProductDetailComponent,
  },
  {
    path: 'cart', component: CartComponent,
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class HomeRoutingModule { }
