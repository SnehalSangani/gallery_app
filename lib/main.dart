import 'package:flutter/material.dart';
import 'package:gallery_app/screen/gallery/view/gallery_screen.dart';
import 'package:gallery_app/screen/home/provider/homeprovider.dart';
import 'package:gallery_app/screen/home/view/home_screen.dart';
import 'package:gallery_app/screen/pageview/view/pageview_screen.dart';
import 'package:gallery_app/screen/profile/view/profile_screen.dart';
import 'package:gallery_app/screen/video/view/video_screen.dart';
import 'package:provider/provider.dart';
void main()
{
  runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => Homeprovider(),
          )
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,

          routes: {
            '/':(context) => home(),
            'gallery':(context) => gallery(),
            'video':(context) => video(),
            'profile':(context) => profile(),
            'pageview':(context) => pageview(),
          },
        ),
      )
  );
}