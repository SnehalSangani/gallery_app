import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text("Profile"),
        ),
        backgroundColor: Colors.black,
        body: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 130,
                      width: 130,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          "assets/images/12.jpeg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text("Snehal sangani",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                    SizedBox(height: 5,),
                    Text("snehalsangani@gmail.com",style: TextStyle(fontSize: 15,color: Colors.white),),
                    SizedBox(height: 20,),
                    SizedBox(
                      width: 150,

                      child: ElevatedButton(
                       onPressed: () {},
                       child: Text("Edit  Profile"),
                      ),
                    ),
                    SizedBox(height: 40,),
                    Container(
                      height: 40,
                      width: 350,
                      child: ListTile(
                        leading: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.blue.shade100,
                          ),
                          child: Icon(Icons.settings,color: Colors.blue.shade900,),
                        ),
                        title: Text("Setting",style: TextStyle(color: Colors.white),),
                        trailing: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.grey.shade300,
                          ),
                          child: Icon(Icons.arrow_forward_ios_rounded,size: 15,),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 40,
                      width: 350,
                      child: ListTile(
                        leading: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.blue.shade100,
                          ),
                          child: Icon(Icons.security,color: Colors.blue.shade900,),
                        ),
                        title: Text("Security",style: TextStyle(color: Colors.white)),
                        trailing: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.grey.shade300,
                          ),
                          child: Icon(Icons.arrow_forward_ios_rounded,size: 15,),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 40,
                      width: 350,
                      child: ListTile(
                        leading: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.blue.shade100,
                          ),
                          child: Icon(Icons.notification_add_outlined,color: Colors.blue.shade900,),
                        ),
                        title: Text("Notification",style: TextStyle(color: Colors.white)),
                        trailing: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.grey.shade300,
                          ),
                          child: Icon(Icons.arrow_forward_ios_rounded,size: 15,),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 40,
                      width: 350,
                      child: ListTile(
                        leading: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.blue.shade100,
                          ),
                          child: Icon(Icons.info_outline_rounded,color: Colors.blue.shade900,),
                        ),
                        title: Text("Information",style: TextStyle(color: Colors.white)),
                        trailing: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.grey.shade300,
                          ),
                          child: Icon(Icons.arrow_forward_ios_rounded,size: 15,),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 40,
                      width: 350,
                      child: ListTile(
                        leading: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.blue.shade100,
                          ),
                          child: Icon(Icons.logout,color: Colors.blue.shade900,),
                        ),
                        title: Text("Log out",style: TextStyle(color: Colors.red),),


                        ),
                      ),



                  ],
                ),
              ),
            ),),

      ),

    );
  }
}
