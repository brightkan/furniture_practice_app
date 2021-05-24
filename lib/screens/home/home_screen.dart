
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture/constants.dart';

import '../../size_config.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    // It helps us make our UI responsive
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
        leading: IconButton(
            icon: SvgPicture.asset("assets/icons/menu.svg",
              height: SizeConfig.defaultSize *2
            ),
            onPressed: (){}
        ),
        actions: [
          IconButton(
              icon: SvgPicture.asset(
                  "assets/icons/scan.svg",
                height: SizeConfig.defaultSize * 2.4
              ),
              onPressed: (){}
          ),
          Center(
            child: Text("Scan", style: TextStyle(
              color: kTextColor,
              fontWeight: FontWeight.bold
            ),),
          ),
          SizedBox(width: SizeConfig.defaultSize * 2,)
        ],
    );
  }
}