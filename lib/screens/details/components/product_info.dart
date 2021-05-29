import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture/models/Product.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({
    Key key,
    @required this.product,
  }) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    TextStyle lightTextStyle = TextStyle(
        color: kTextColor.withOpacity(0.6)
    );
    return Container(
      height: defaultSize * 37.5,
      width: defaultSize* (SizeConfig.orientation== Orientation.landscape?35:15),
      padding: EdgeInsets.symmetric(
          horizontal: defaultSize * 2
      ),
      // color: Colors.black45,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(product.category.toUpperCase(),
            style: lightTextStyle,
          ),
          SizedBox(height:defaultSize),
          Text(product.title, style: TextStyle(
              fontSize: defaultSize * 2.4,
              fontWeight: FontWeight.bold,
              letterSpacing: -1.8,
              height: 1.4
          ),
          ),
          SizedBox(height:defaultSize * 2),
          Text("From", style: lightTextStyle,),
          Text("\$${product.price}", style: TextStyle(
              fontSize: defaultSize * 1.6,
              fontWeight: FontWeight.bold,
              height: 1.6
          ),
          ),
          SizedBox(height:defaultSize * 2),
          Text("Available Colors", style: lightTextStyle,),
          Row(
            children: [
              buildColorCircle(color: Color(0XFF7BA275), isActive: true),
              buildColorCircle(color: Color(0XFFD7D7D7)),
              buildColorCircle(color: kTextColor),
            ],
          )
        ],
      ),
    );
  }

}


Container buildColorCircle({Color color, bool isActive = false}) {
  double defaultSize = SizeConfig.defaultSize;
  return Container(
    padding: const EdgeInsets.all(5),
    margin: EdgeInsets.only(top: defaultSize, right: defaultSize),
    width: defaultSize * 2.4,
    decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle
    ),
    child: isActive? SvgPicture.asset("assets/icons/check.svg"):SizedBox(),
  );
}