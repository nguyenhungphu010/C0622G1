import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import {HomeModule} from './modules/home/home.module';
import {SecurityModule} from './modules/security/security.module';
import {CustomerModule} from './modules/customer/customer.module';


const routes: Routes = [
  {
    path: 'home', loadChildren: () => HomeModule,
  },
  {
    path: 'login', loadChildren: () => SecurityModule,
  },
  {
    path: 'customer', loadChildren: () => CustomerModule,
  }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
