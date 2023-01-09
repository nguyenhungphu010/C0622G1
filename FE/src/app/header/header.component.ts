import { Component, OnInit } from '@angular/core';
import {Router} from '@angular/router';
import {TokenStorageService} from '../service/token-storage.service';
import {ProductService} from '../service/product.service';
import Swal from 'sweetalert2';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.css']
})
export class HeaderComponent implements OnInit {
  isLogin: string;
  name: string;
  username: string;
  roles: string ;
  isCustomer = false;
  isAdmin = false;
  isEmployee = false;
  constructor(private productService: ProductService,
              private tokeStorageService: TokenStorageService,
              private router: Router) { }

  ngOnInit(): void {
    this.isLogin = '';
    this.loginFunction();
    console.log(this.isLogin);
    this.username = this.tokeStorageService.getUsername();
    console.log(this.username);
    console.log(this.tokeStorageService.getRoles());
    this.getRoles();
  }
  getRoles() {
    this.roles = this.tokeStorageService.getRoles();
    this.isCustomer = this.roles.indexOf('ROLE_CUSTOMER') !== -1;
    this.isEmployee = this.roles.indexOf('ROLE_EMPLOYEE') !== -1;
    this.isAdmin = this.roles.indexOf('ROLE_ADMIN') !== -1;
  }
  loginFunction() {
    this.isLogin = this.tokeStorageService.getIsLogin();
    if (this.tokeStorageService.getIsLogin() == null) {
      this.isLogin = '';
    } else {
      this.isLogin = this.tokeStorageService.getIsLogin();
    }
  }
  logOut() {
    Swal.fire({
      position: 'center',
      icon: 'success',
      title: ' Đăng xuất thành công !',
      showConfirmButton: false,
      timer: 4000
    });
    localStorage.clear();
    sessionStorage.clear();
    this.isLogin = '';
    this.router.navigateByUrl('/home/list');
  }
}
