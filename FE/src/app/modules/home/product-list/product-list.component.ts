import {Component, OnInit} from '@angular/core';
import {ProductService} from '../../../service/product.service';
import {Product} from '../../../model/product';
import {BehaviorSubject, Observable} from 'rxjs';
import {Title} from '@angular/platform-browser';

@Component({
  selector: 'app-product-list',
  templateUrl: './product-list.component.html',
  styleUrls: ['./product-list.component.css']
})
export class ProductListComponent implements OnInit {

  productNameSearch = '';
  pageSize = 5;
  page = 1;
  productList: Product[];
  total$: Observable<number>;
  action: boolean;

  constructor(private productService: ProductService,
              private title: Title) {
    this.title.setTitle('Home Page');
  }

  ngOnInit(): void {
    this.paginate();
  }

  paginate() {
    this.productService.paginate(this.page, this.pageSize, this.productNameSearch).subscribe(value => {
      console.log(value);
      if (value != null) {
        this.action = true;
        this.productList = value.content;
        this.total$ = new BehaviorSubject<number>(value.totalElements);
      } else {
        this.action = false;
      }
    });
  }

  loadMore() {
    this.pageSize += 5;
    this.paginate();
  }

  loadLess() {
    this.pageSize -= 5;
    this.paginate();
  }
}
