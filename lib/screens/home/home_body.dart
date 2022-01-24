import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tree_plant/utils/style.dart';
import 'package:tree_plant/screens/details/details.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          RowWithButton(
            title: "Recomended",
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ImageBox(
                  image: "assets/img/image_1.png",
                  title: "Samantha",
                  country: "Russia",
                  price: 400,
                ),
                ImageBox(
                  image: "assets/img/image_2.png",
                  title: "Angelica",
                  country: "America",
                  price: 300,
                ),
                ImageBox(
                  image: "assets/img/image_3.png",
                  title: "FlowerTree",
                  country: "India",
                  price: 420,
                ),
              ],
            ),
          ),
          RowWithButton(
            title: "Featured Plants",
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                FeaturedBox(img: "assets/img/bottom_img_1.png"),
                FeaturedBox(img: "assets/img/bottom_img_2.png"),
              ],
            ),
          ),
          SizedBox(
            height: mPadding,
          )
        ],
      ),
    );
  }
}

class FeaturedBox extends StatelessWidget {
  const FeaturedBox({
    Key? key,
    required this.img,
  }) : super(key: key);

  final String img;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          left: mPadding, top: mPadding / 2, bottom: mPadding / 2),
      width: size.width * .8,
      height: 185,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(img),
          )),
    );
  }
}

class ImageBox extends StatelessWidget {
  const ImageBox({
    Key? key,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
  }) : super(key: key);

  final String image, title, country;
  final int price;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (contex) => DetailsScreen()));
      },
      child: Container(
          margin: EdgeInsets.only(
            top: mPadding / 2,
            bottom: mPadding,
          ),
          width: size.width * 0.4,
          child: Column(
            children: [
              Image.asset(image),
              Container(
                margin: EdgeInsets.symmetric(horizontal: mPadding),
                padding: EdgeInsets.all(mPadding / 2),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: Colors.green.withOpacity(0.23),
                      ),
                    ],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    )),
                child: Row(
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "$title\n".toUpperCase(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          TextSpan(
                            text: "$country".toUpperCase(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.green[900]!.withOpacity(0.8),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Text(
                      "\$$price",
                      style: TextStyle(
                          color: Colors.green[900],
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}

class RowWithButton extends StatelessWidget {
  const RowWithButton({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: mPadding),
      child: Row(
        children: [
          RowText(
            text: title,
          ),
          Spacer(),
          FlatButton(
              color: Colors.green[900],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onPressed: () {},
              child: Text("More", style: TextStyle(color: Colors.white)))
        ],
      ),
    );
  }
}

class RowText extends StatelessWidget {
  const RowText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                margin: EdgeInsets.only(right: mPadding / 9),
                height: 4,
                color: Colors.green.withOpacity(0.3),
              ))
        ],
      ),
    );
  }
}

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: mPadding * 2.5),
        height: size.height * .2,
        child: Stack(children: [
          Container(
            padding:
                EdgeInsets.only(left: mPadding, right: mPadding, bottom: 36),
            height: size.height * 0.2 - 27,
            decoration: BoxDecoration(
                color: Colors.green[900],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(36),
                  bottomRight: Radius.circular(36),
                )),
            child: Row(
              children: [
                Text(
                  "Hi Tamima!",
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Image.asset("assets/img/logo.png")
              ],
            ),
          ),
          Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: mPadding),
                height: 54,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: Colors.green.withOpacity(0.23),
                      )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: mPadding),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          onChanged: (value) {},
                          decoration: InputDecoration(
                              hintText: "Search",
                              hintStyle: TextStyle(
                                color: Colors.green[900]!.withOpacity(0.9),
                              ),
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none),
                        ),
                      ),
                      SvgPicture.asset("assets/icons/search.svg")
                    ],
                  ),
                ),
              ))
        ]));
  }
}
