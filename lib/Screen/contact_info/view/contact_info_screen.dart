import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactInfoscreen extends StatefulWidget {
  const ContactInfoscreen({super.key});

  @override
  State<ContactInfoscreen> createState() => _ContactInfoscreenState();
}

class _ContactInfoscreenState extends State<ContactInfoscreen> {
  @override
  Widget build(BuildContext context) {
    return  CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: Row(
          children: [
            Icon(CupertinoIcons.back),
            Text(
              "Contact",
              style: TextStyle(color: Colors.blue),
            ),
          ],
        ),
        trailing: Text("Edit",style: TextStyle(color: Colors.blue)),
        // backgroundColor: CupertinoDynamicColor.withBrightness(color: Colors.white, darkColor: Colors.white ),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(height: 30,),
            Align(alignment: Alignment.topCenter,
              child:CircleAvatar(
                radius: 55,backgroundColor: Colors.grey,
                child: Text("JA",style: TextStyle(color: Colors.white,fontSize: 25),),
              ),
            ),
              SizedBox(height: 20,),
              Text("John AppleSeeds",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: MediaQuery.sizeOf(context).height*0.08,
                    width: MediaQuery.sizeOf(context).width*0.25,
                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(5),
                      color: Colors.grey.shade300,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.message,color: Colors.white,),
                        Text("Message"),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.sizeOf(context).height*0.08,
                    width: MediaQuery.sizeOf(context).width*0.25,
                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(5),
                      color: Colors.grey.shade300,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.call,color: Colors.white,),
                        Text("Call"),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.sizeOf(context).height*0.08,
                    width: MediaQuery.sizeOf(context).width*0.25,
                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(5),
                      color: Colors.grey.shade300,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.mail,color: Colors.white,),
                        Text("Mail"),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
