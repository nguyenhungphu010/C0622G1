import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import {CustomerListComponent} from './customer-list/customer-list.component';
import {AuthGuard} from '../security/auth.guard';
import {CustomerCreateComponent} from './customer-create/customer-create.component';


const routes: Routes = [
  {
    path: 'list', component: CustomerListComponent,
    canActivate: [AuthGuard], data: {
      roles: ['ROLE_ADMIN', 'ROLE_EMPLOYEE']
    }
  },
  {
    path: 'create' , component: CustomerCreateComponent,
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class CustomerRoutingModule { }
