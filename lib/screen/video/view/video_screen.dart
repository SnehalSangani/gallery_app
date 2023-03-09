import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../home/provider/homeprovider.dart';

class video extends StatefulWidget {
  const video({Key? key}) : super(key: key);

  @override
  State<video> createState() => _videoState();
}

class _videoState extends State<video> {
  Homeprovider? hptrue;
  Homeprovider? hpfalse;

  @override
  Widget build(BuildContext context) {
    hptrue = Provider.of(context, listen: true);
    hpfalse = Provider.of(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text("Video"),
        ),
        backgroundColor: Colors.black,
        body: ListView.builder(
          itemCount: hpfalse!.pic.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading:
                    Container(
                      height: 100,
                        width: 50,
                        child: Image.asset("${hpfalse!.pic[index]}",fit: BoxFit.cover,)),
                title: Text("VID-202356520",style: TextStyle(color: Colors.white),),
                trailing: Icon(Icons.video_call_rounded,color: Colors.white,),
              ),
            );
          },
        ),

      ),
    );
  }
}
