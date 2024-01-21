
import 'package:flutter/material.dart';
import 'package:state_provider/2-lesson/data/models/product_model/product_model.dart';
import 'package:state_provider/2-lesson/service/api_service/api_service.dart';

// class ProductViewModel extends ChangeNotifier {
//   List<ProductModel> products = [];

//   void getAllProducts() async {
//     products = await ApiService().getAllProducts();
//     notifyListeners();
//   }
// }

class ProductViewModel extends ChangeNotifier{
  List<ProductModel> products = [];
  bool  isloding = false; 

  void getAllProducts()async {
    isloding =true;
    products= await ApiService().getAllProducts();
    isloding = false;
    notifyListeners();
  }

  void changeLodingState(){
  isloding = !isloding;
  notifyListeners();

}
}



