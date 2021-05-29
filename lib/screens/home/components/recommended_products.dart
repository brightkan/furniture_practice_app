import 'package:flutter/material.dart';
import 'package:furniture/models/Product.dart';
import 'package:furniture/screens/home/components/product_card.dart';
import 'package:furniture/screens/details/details_screen.dart';
import '../../../size_config.dart';

class RecommendedProducts extends StatelessWidget {
  const RecommendedProducts({
    Key key, this.products,
  }) : super(key: key);

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return Padding(
      padding: EdgeInsets.all(defaultSize * 2),
      child: GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            childAspectRatio: 0.639,

          ),
          itemBuilder: (context,index)=>
              ProductCard(product: products[index],press: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>
                    DetailsScreen(product: products[index])
                )
                );
              })

      ),
    );
  }
}