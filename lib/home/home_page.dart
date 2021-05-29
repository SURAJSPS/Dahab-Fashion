import 'package:dahab_fashon_jewellery/home/util/util.dart';
import 'package:dahab_fashon_jewellery/home/widget/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: FutureBuilder(
            builder: (context, projectSnap) {
              if (ProductUtil.productList.length == 0 ||
                  projectSnap.hasData == null) {
                return Center(child: CircularProgressIndicator());
              }
              return StaggeredGridView.countBuilder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 7, vertical: 5),
                staggeredTileBuilder: (int index) => new StaggeredTile.fit(
                  1,
                ),
                mainAxisSpacing: 2,
                crossAxisSpacing: 1,
                itemCount: ProductUtil.productList.length,
                crossAxisCount: 2,
                itemBuilder: (context, index) {
                  return ProductCard(
                    productModel: ProductUtil.productList[index],
                  );
                },
              );
            },
            future: ProductUtil.fetchProducts(),
          ),
        ));
  }
}
