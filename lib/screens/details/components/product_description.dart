import 'package:flutter/material.dart';
import 'package:furniture/models/Product.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key key,
    @required this.product, this.press,
  }) : super(key: key);
  final Product product;
  final Function press;
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return SafeArea(
      child: Container(
        constraints: BoxConstraints(minHeight: defaultSize*44),
        padding: EdgeInsets.only(
          top: defaultSize *9,
          left: defaultSize *2,
          right: defaultSize *2,
        ),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(defaultSize * 1.2),
              topLeft: Radius.circular(defaultSize * 1.2),
            )
        ),
        child: Column(
          children: [
            Text(
              product.subTitle,
              style: TextStyle(
                  fontSize: defaultSize * 1.8,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: defaultSize * 3),
            Text(product.description),
            SizedBox(height: defaultSize * 3),
            SizedBox(
              width: double.infinity,
              child: TextButton(onPressed: press,
                  style: TextButton.styleFrom(
                      backgroundColor: kPrimaryColor,
                      padding: EdgeInsets.all(defaultSize * 1.5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)
                      )
                  ),
                  child: Text("Add to Cart", style:
                  TextStyle(color: Colors.white,fontSize: defaultSize*1.6,
                      fontWeight: FontWeight.bold)
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}