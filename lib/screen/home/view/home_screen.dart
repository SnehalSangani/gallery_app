import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gallery_app/screen/gallery/view/gallery_screen.dart';
import 'package:gallery_app/screen/home/provider/homeprovider.dart';
import 'package:gallery_app/screen/profile/view/profile_screen.dart';
import 'package:gallery_app/screen/video/view/video_screen.dart';
import 'package:provider/provider.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  Homeprovider? hptrue;
  Homeprovider? hpfalse;
  List screen=[gallery(),video(),profile(),];
  @override
  Widget build(BuildContext context) {
    hptrue = Provider.of(context,listen: true);
    hpfalse = Provider.of(context,listen: false);
    return SafeArea(child: Scaffold(
      body: screen[hptrue!.i],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: hptrue!.i,
        onTap: (value) {
          hpfalse!.selectindex(value);
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor:Colors.white,
        unselectedItemColor: Colors.grey,

        items: [

          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_call_rounded), label: "Video"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    ));
  }
}
