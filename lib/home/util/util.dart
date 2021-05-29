import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:dahab_fashon_jewellery/home/model/model.dart';

class ProductUtil  {
  static List<ProductModel> productList = [];

  static Future<List<ProductModel>> fetchProducts() async {
    try {
      String url =
          'https://dahab.webtekdigital.com/wp-json/wc/v2/products/?consumer_key=ck_e94df6990f2b2e4284a60a0c30c5bcb43e171465&consumer_secret=cs_e19bd2b68f959a7fc14e6caad25a8e747c4bb572';
      final response = await http.get(url);
      var data = jsonDecode(response.body);
      List<dynamic> list = data
          .map((result) => new ProductModel.fromJson(result))
          .toList();
      productList.clear();
      for (int b = 0; b < list.length; b++) {
        ProductModel productModel = list[b] as ProductModel;
        productList.add(productModel);
      }
      return productList;
    } catch (e) {
      print("Exception________$e");
      return null;
    }
  }
}
