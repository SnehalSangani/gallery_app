import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../home/provider/homeprovider.dart';

class pageview extends StatefulWidget {
  const pageview({Key? key}) : super(key: key);

  @override
  State<pageview> createState() => _pageviewState();
}

class _pageviewState extends State<pageview> {
  Homeprovider? hptrue;
  Homeprovider? hpfalse;
  @override
  Widget build(BuildContext context) {
    hptrue = Provider.of<Homeprovider>(context,listen: true);
    hpfalse = Provider.of<Homeprovider>(context,listen: false);

    int i = ModalRoute.of(context)!.settings.arguments as int;

    return SafeArea(child: Scaffold(
      backgroundColor: Colors.black,
      body: PageView.builder(
        controller: PageController(initialPage: i),
          itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
            height: 300,
            width: 350,
            color: Colors.white,
            child: Image.asset("${hpfalse!.pic[index]}",fit: BoxFit.cover,),
          ),
        );
      },itemCount:hpfalse!.pic.length),
    ));
  }
}
