import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:splash_screen/network/remote/api_manager.dart';

class AllCategores{
  Future<List<dynamic>> getAllCategores() async {
      List<dynamic> data = await ApiManager().get(url: "https://fakestoreapi.com/products/categories");
      return data;
    }
  }
