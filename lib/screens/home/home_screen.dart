import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tree_plant/utils/style.dart';

import 'home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset("assets/icons/menu.svg"),
          onPressed: () {},
        ),
      ),
      body: HomeBody(),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(
          left: mPadding * 2,
          right: mPadding * 2,
          bottom: mPadding,
        ),
        height: 80,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 35,
            color: Colors.green.withOpacity(0.40),
          )
        ], color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("assets/icons/flower.svg")
            ),
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("assets/icons/heart-icon.svg")
            ),
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("assets/icons/sun.svg")
            ),


          ],
        ),
      ),
    );
  }
}
