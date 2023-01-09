import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import {HomeModule} from './modules/home/home.module';
import {SecurityModule} from './modules/security/security.module';


const routes: Routes = [
  {
    path: 'home', loadChildren: () => HomeModule,
  },
  {
    path: 'login', loadChildren: () => SecurityModule,
  }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
