import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tree_plant/utils/style.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.85,
            child: Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: mPadding * 2),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: SvgPicture.asset(
                                "assets/icons/back_arrow.svg")),
                      ),
                      Spacer(),
                      IconCard(
                        icon: "assets/icons/sun.svg",
                      ),
                      IconCard(
                        icon: "assets/icons/icon_2.svg",
                      ),
                      IconCard(
                        icon: "assets/icons/icon_3.svg",
                      ),
                      IconCard(
                        icon: "assets/icons/icon_4.svg",
                      ),
                    ],
                  ),
                )),
                Container(
                  height: size.height * 0.8,
                  width: size.width * 0.75,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/img/img.png"),
                          fit: BoxFit.cover,
                          alignment: Alignment.centerLeft),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(63),
                        topLeft: Radius.circular(63),
                      ),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 60,
                          color: Colors.green.withOpacity(0.23),
                        )
                      ]),
                )
              ],
            ),
          ),
          Column(
            children: [
              Title(
                title: "Angelica",
                country: "Russia",
                price: 440,
              ),
              SizedBox(
                height: mPadding / 2,
              ),
              Row(
                children: [
                  SizedBox(
                    width: size.width / 2,
                    height: 84,
                    child: FlatButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.only(topRight: Radius.circular(20))),
                      color: Colors.green[900],
                      child: Text(
                        "Buy Now",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                  Expanded(
                      child: FlatButton(
                    onPressed: () {},
                    child: Text(
                      "Description",
                      style: TextStyle(fontSize: 16),
                    ),
                  ))
                ],
              ),
              SizedBox(
                height: mPadding,
              )
            ],
          )
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
    required this.title,
    required this.country,
    required this.price,
  }) : super(key: key);
  final String title, country;
  final int price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: mPadding),
      child: Container(
        child: Row(
          children: [
            RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "$title\n",
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                TextSpan(
                    text: country,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.green[900],
                        fontWeight: FontWeight.w300)),
              ]),
            ),
            Spacer(),
            Text(
              "\$$price",
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(color: pColor),
            )
          ],
        ),
      ),
    );
  }
}

class IconCard extends StatelessWidget {
  const IconCard({
    Key? key,
    required this.icon,
  }) : super(key: key);

  final String icon;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
      padding: EdgeInsets.all(mPadding / 2),
      height: 62,
      width: 62,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 15),
              blurRadius: 22,
              color: Colors.green.withOpacity(0.22),
            ),
            BoxShadow(
              offset: Offset(-15, -15),
              blurRadius: 20,
              color: Colors.white,
            )
          ]),
      child: SvgPicture.asset(icon),
    );
  }
}
