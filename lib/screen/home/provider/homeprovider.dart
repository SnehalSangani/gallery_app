import 'package:flutter/cupertino.dart';

class Homeprovider extends ChangeNotifier
{
  int i=0;
  List pic=[
    "assets/images/1.jpeg",
    "assets/images/2.jpeg",
    "assets/images/3.jpeg",
    "assets/images/4.jpeg",
    "assets/images/5.jpeg",
    "assets/images/6.jpeg",
    "assets/images/7.jpeg",
    "assets/images/8.jpeg",
    "assets/images/9.jpeg",
    "assets/images/10.jpeg",
    "assets/images/11.jpeg",
    "assets/images/12.jpeg",
    "assets/images/13.jpeg",
    "assets/images/14.jpeg",
    "assets/images/15.jpeg",
    "assets/images/16.jpeg",
    "assets/images/17.jpeg",
    "assets/images/18.jpeg",
    "assets/images/19.jpeg",
    "assets/images/20.jpeg",
  ];
  void selectindex(int value)
  {
    i=value;
    notifyListeners();
  }
}