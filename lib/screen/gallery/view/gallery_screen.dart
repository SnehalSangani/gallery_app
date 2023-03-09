import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../home/provider/homeprovider.dart';

class gallery extends StatefulWidget {
  const gallery({Key? key}) : super(key: key);

  @override
  State<gallery> createState() => _galleryState();
}

class _galleryState extends State<gallery> {

  Homeprovider? hptrue;
  Homeprovider? hpfalse;
  @override
  Widget build(BuildContext context) {
    hptrue = Provider.of(context,listen: true);
    hpfalse = Provider.of(context,listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text("Gallery"),
        ),
        backgroundColor: Colors.black,
        body: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
            itemCount: hpfalse!.pic.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(2),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'pageview',arguments: index);
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(color: Colors.purpleAccent,
                    ),
                    child: Image.asset("${hpfalse!.pic[index]}",fit: BoxFit.cover,),
                  ),
                ),
              );
            },),

      ),
    );
  }
}
