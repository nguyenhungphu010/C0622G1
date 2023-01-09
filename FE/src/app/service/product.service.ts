import {Injectable} from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {environment} from '../../environments/environment';
import {Observable} from 'rxjs';
import {SearchResult} from '../model/search-result';
import {Product} from '../model/product';

@Injectable({
  providedIn: 'root'
})
export class ProductService {
  private API_URL: string;

  constructor(private httpClient: HttpClient) {
    this.API_URL = environment.api_url;
  }

  paginate(page: number, limit: number, searchName: string): Observable<SearchResult<Product>> {
    return this.httpClient.get<SearchResult<Product>>(this.API_URL + 'home/list?page=' + (page - 1) + '&size=' + limit + '&name=' +
    searchName);
  }
  getById(id: number): Observable<Product> {
    return this.httpClient.get<Product>(this.API_URL + 'home/detail/' + id);
  }
}
