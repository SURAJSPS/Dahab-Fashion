import 'package:flutter/material.dart';
import 'package:dahab_fashon_jewellery/home/model/model.dart';
class ProductCard extends StatelessWidget {
  final ProductModel productModel;
  ProductCard({
    Key key,
    @required this.productModel,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
//per product card
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: <Widget>[
          Container(
            height: size.height * .22,
            width: size.width * .47,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      productModel.images[0].src,
                    ))),
            child: new Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(1),
                  ),
                  color: Colors.black.withOpacity(0.1)),
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            ),
          ),
          Text(
            productModel.categories[0].name,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
