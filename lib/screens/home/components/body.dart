import 'package:flutter/material.dart';
import 'package:furniture/components/title_text.dart';

import '../../../size_config.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    double defaultSize = SizeConfig.defaultSize;
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(defaultSize * 2),
            child: TitleText(title: "Browse by categories",),
          )
        ],
      ),
    );
  }
}

