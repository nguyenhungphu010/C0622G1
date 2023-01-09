import {Component, OnInit} from '@angular/core';
import {ProductService} from '../../../service/product.service';
import {ActivatedRoute, Router, RouterLink} from '@angular/router';
import {Title} from '@angular/platform-browser';
import {Product} from '../../../model/product';
import {CartService} from '../../../service/cart.service';
import {FormControl, FormGroup} from '@angular/forms';
import Swal from 'sweetalert2';

@Component({
  selector: 'app-product-detail',
  templateUrl: './product-detail.component.html',
  styleUrls: ['./product-detail.component.css']
})
export class ProductDetailComponent implements OnInit {
  productId: number;
  product: Product;

  constructor(private productService: ProductService,
              private router: Router,
              private activatedRoute: ActivatedRoute,
              private cartService: CartService,
              private title: Title) {
    this.title.setTitle('Product Detail');
  }

  productFormGroup = new FormGroup({
    id: new FormControl(),
    name: new FormControl(),
    image: new FormControl(),
    taste: new FormControl(),
    ingredient: new FormControl(),
    weight: new FormControl(),
    stock: new FormControl(),
    unit: new FormControl(),
    price: new FormControl(),
  });

  ngOnInit(): void {
    this.productId = Number(this.activatedRoute.snapshot.params.id);
    console.log(this.productId);
    this.productService.getById(this.productId).subscribe(value => {
      this.product = value;
      this.productFormGroup.patchValue(this.product);
    });
  }
  addToCard(){
    this.cartService.addToCart(this.productId).subscribe(value => {
      this.cartService.getAllCart().subscribe();
      Swal.fire({
        position: 'center',
        icon: 'success',
        title: 'Thêm vào giỏ hàng thành công !',
        showConfirmButton: false,
        timer: 2000
      })
    })
  }

}
