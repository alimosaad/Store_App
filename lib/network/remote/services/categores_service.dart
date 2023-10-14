import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:splash_screen/models/product_model.dart';
import 'package:http/http.dart' as http;
import 'package:splash_screen/network/remote/api_manager.dart';
class CategoresService{
  Future<List<ProductModel>> getCategores({required String categoryName}) async {
    List<dynamic> data=await ApiManager().get(url: "https://fakestoreapi.com/products/category/$categoryName");


      List<ProductModel> productList=[];
      for(int i=0;i<data.length;i++){
        productList.add(ProductModel.fromJson(data[i]));

      }
      return productList;

  }
}
