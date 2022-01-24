import 'package:flutter/material.dart';
import 'package:tree_plant/add_details.dart';
import 'package:tree_plant/screens/details/details.dart';
import 'package:tree_plant/screens/home/home_screen.dart';
import 'package:tree_plant/utils/style.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Tree Plant",
      theme: ThemeData(
          primaryColor: pColor,
          textTheme: Theme.of(context).textTheme.apply(bodyColor: tColor)),
      home: HomeScreen(),
    );
  }
}
