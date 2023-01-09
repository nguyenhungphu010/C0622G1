import {Component, OnDestroy, OnInit} from '@angular/core';
import {Cart} from '../../../model/cart';
import {CartService} from '../../../service/cart.service';
import {TokenStorageService} from '../../../service/token-storage.service';
import {render, RenderParams} from 'creditcardpayments/creditCardPayments';
import {FormControl, FormGroup} from '@angular/forms';
import Swal from 'sweetalert2';
import {formatDate} from '@angular/common';

@Component({
  selector: 'app-cart',
  templateUrl: './cart.component.html',
  styleUrls: ['./cart.component.css']
})
export class CartComponent implements OnInit, OnDestroy {

  cartList: Cart[];
  totalPrice: number = 0;
  selectCart: Cart[] = [];
  order: any;

  // paypal
  renderParam?: RenderParams;

  feeShipping: number = 0;

  orderForm?: FormGroup;
  dateOrderProcess: Date;
  paymentMethod: string;

  crrDate: string;


  constructor(private cartService: CartService,
              private tokenStorageService: TokenStorageService) {

    this.renderParam = {
      id: '#paypalButton',
      currency: 'VND',
      value: '0',
      onApprove: details => {
        this.cartService.updateAll(this.cartList).subscribe();
        this.selectCart.map(value => value.status = true);
        this.cartService.pay(this.selectCart).subscribe(value => {
          this.getCartItems();
        });
        alert(' thanh toan thanh cong');
      }
    };
  }

  ngOnInit(): void {
    this.getCartItems();
    render(this.renderParam);

    this.orderForm = new FormGroup({
      paymentMethod: new FormControl('Thanh toán khi nhận hàng'),
      shippingMethod: new FormControl(1),
    });
    this.getFeeShippingMethod();
  }

  getCartItems() {
    this.cartService.getAllCart().subscribe(value => {
      this.cartList = value;
      console.log(value);
    });
// khoi tao doi tuong new Date.
    this.dateOrderProcess = new Date();
    this.crrDate = formatDate(this.dateOrderProcess, 'yyyy-MM-dd', 'en-US');
  }

  select(cart: Cart) {
    if (this.selectCart.includes(cart)) {
      this.selectCart.splice(this.selectCart.indexOf(cart), 1);
    } else {
      this.selectCart.push(cart);
    }
    this.totalPrice = 0;
    this.selectCart.forEach(value => {
      this.totalPrice += value.quantity * value.product.price;
    });
    console.log(this.totalPrice);
    console.log(this.totalPrice);
    this.renderParam.value = String((this.totalPrice / 23000).toFixed(2));
    console.log(this.selectCart);
  }

  getFeeShippingMethod() {
    if (this.orderForm.value.shippingMethod == 1) {
      this.feeShipping = 30000;
    }
    if (this.orderForm.value.shippingMethod == 2) {
      this.feeShipping = 50000;
    }
    if (this.orderForm.value.shippingMethod == 3) {
      this.feeShipping = 80000;
    }
    if (this.orderForm.value.shippingMethod == 4) {
      this.feeShipping = 100000;
    }
  }

  ngOnDestroy(): void {
    this.cartService.updateAll(this.cartList).subscribe();
  }

  deleteCart(id: number): void {
    this.cartService.deleteCart(id).subscribe(value => {
      this.getCartItems();
      Swal.fire({
        position: 'center',
        icon: 'success',
        title: ' Xoa san pham thành công !',
        showConfirmButton: false,
        timer: 2000
      });
    });
  }

  increase(i: number) {
    this.cartList[i].quantity += 1;
    this.totalPrice = 0;
    this.selectCart.forEach(value => {
      this.totalPrice += value.quantity * value.product.price;
    });
  }

  decrease(i: number) {
    if (this.cartList[i].quantity > 1) {
      this.cartList[i].quantity -= 1;
    }
    this.totalPrice = 0;
    this.selectCart.forEach(value => {
      this.totalPrice += value.quantity * value.product.price;
    });
  }
}
