import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:furniture/constants.dart';
import 'package:furniture/models/Product.dart';
import 'package:furniture/screens/details/components/product_description.dart';
import 'package:furniture/screens/details/components/product_info.dart';
import 'package:furniture/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key key, @required this.product}) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    TextStyle lightTextStyle = TextStyle(
        color: kTextColor.withOpacity(0.6)
    );
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        height:(SizeConfig.orientation == Orientation.landscape?SizeConfig.screenWidth:SizeConfig.screenHeight) - AppBar().preferredSize.height,
        child: Stack(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductInfo(product: product),
            Positioned(
                top: defaultSize * 37.5,
                left: 0,
                right: 0,
                child: ProductDescription(product: product, press: (){})
            ),
            Positioned(
              top: defaultSize * 9.5,
                right: -defaultSize*7.5,
                child: Hero(
                  tag: 1,
                  child: Image.network(product.image, height: defaultSize * 37.8,
            width: defaultSize * 36.4,
              fit: BoxFit.contain,
            ),
                )
            )
          ],
        ),
      ),
    );
  }
}






