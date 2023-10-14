import 'package:http/http.dart' as http;
import 'package:splash_screen/models/product_model.dart';
import 'package:splash_screen/network/remote/api_manager.dart';

class AddProduct {
  Future<ProductModel> addproduct(
      {required String title,
      required String price,
      required String description,
      required String image,
      required String category}) async {
    Map<String, dynamic> data = await ApiManager().post(
      url: 'https://fakestoreapi.com/products',
      body: {
        'title': title,
        'price': price,
        'description': description,
        'image': image,
        'category': category
      },
    );
    return ProductModel.fromJson(data);
  }
}
