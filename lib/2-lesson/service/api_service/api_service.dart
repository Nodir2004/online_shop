import 'package:dio/dio.dart';
import 'package:state_provider/2-lesson/data/models/product_model/product_model.dart';
// class ApiService {
//   Future getAllProducts() async {
//     Dio dio = Dio();
//     print("Respons ketdi");
//     Response response = await dio.get("https://dummyjson.com/products");
//     if (response.statusCode == 200) {
//       return (response.data["products"] as List)
//           .map((e) => ProductModel.fromJson(e))
//           .toList();
//     } else {
//       throw DioException(requestOptions: response.requestOptions);
//     }
//   }
// }

class ApiService {
  Future getAllProducts() async {
    Dio dio = Dio();
    print("respons ketdi");
    Response response = await dio.get("https://dummyjson.com/products");
    if (response.statusCode == 200) {
      return (response.data["products"] as List)
          .map((e) => ProductModel.fromJson(e))
          .toList();
    } else {
      throw DioException(requestOptions: response.requestOptions);
    }
  }
}


