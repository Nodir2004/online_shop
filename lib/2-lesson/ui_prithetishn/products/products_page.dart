import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_provider/2-lesson/view_model/products_view_model.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  void didChangeDependencies() {
    Provider.of<ProductViewModel>(context).getAllProducts();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD5E9FB),
      appBar: AppBar(
        title: const Text("Products Page"),
      ),
      body: Consumer<ProductViewModel>(
        builder: (context, value, child){
          if(value.products.isNotEmpty){
            return  GridView.builder(
          padding: EdgeInsets.all(12),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 5000,
            crossAxisSpacing: 16, //gorizantaliga oraliq
            mainAxisExtent: 280,
            mainAxisSpacing: 16, //vertikaliga oraliq
          ),
          scrollDirection: Axis.vertical,
          itemCount: value.products.length,
          shrinkWrap: true,
          itemBuilder: (context, index) =>
              //  ProductWidget(

              //       product: value.products[index],
              //     )

              Container(
                width: 177,
               // height: 280,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 177,
                      height: 136,
                      decoration: ShapeDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            value.products[index].thumbnail,
                          ),
                          fit: BoxFit.cover,
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                      ),
                    ),

                    // Image(image: NetworkImage(value.products[index].images.toString())),
                    SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 12,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            value.products[index].title,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            value.products[index].description,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            "${value.products[index].price.toString()}\$",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),

                    //  Text(value.products[index].category),
                  ],
                ),
              ),
        );
          }
          if(value.isloding){
            return Center(child: CircularProgressIndicator());
          }else{
            return Text("data yoq");
          }
        }
      
        
      ),
    );
    // floatingActionButton: FloatingActionButton(
    //   onPressed: () {
    //     context.read<ProductViewModel>().getAllProducts();
    //   },
    // ),
  }
}
