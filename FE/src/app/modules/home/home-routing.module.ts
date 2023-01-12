import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import {ProductListComponent} from './product-list/product-list.component';
import {ProductDetailComponent} from './product-detail/product-detail.component';
import {CartComponent} from './cart/cart.component';
import {AuthGuard} from '../security/auth.guard';


const routes: Routes = [
  {
    path: 'list', component: ProductListComponent,
  },
  {
    path: 'detail/:id', component: ProductDetailComponent,
  },
  {
    path: 'cart', component: CartComponent,
    canActivate: [AuthGuard],
    data: {
      roles: ['ROLE_ADMIN', 'ROLE_CUSTOMER', 'ROLE_EMPLOYEE']
    }
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class HomeRoutingModule { }
