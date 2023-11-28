import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactInfoscreen extends StatefulWidget {
  const ContactInfoscreen({super.key});

  @override
  State<ContactInfoscreen> createState() => _ContactInfoscreenState();
}

class _ContactInfoscreenState extends State<ContactInfoscreen> {
  double _currentSliderValue = 0.0;
  String? _sliderStatus;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar:  CupertinoNavigationBar(
        leading: Row(
          children: [
            GestureDetector(   onTap: (){
              Navigator.pop(context, 'info');
            },child: const Icon(CupertinoIcons.back)),
            const Text(
              "Contact",
              style: TextStyle(color: Colors.blue),
            ),
          ],
        ),
        trailing:  CupertinoContextMenu(
          actions: const [
            CupertinoContextMenuAction(
              child: Text("Setting"),
            ),
            CupertinoContextMenuAction(
              child: Text("Share"),
            ),
            CupertinoContextMenuAction(
              child: Text("Help And FeedBack"),
            ),
          ],
          child: const Icon(CupertinoIcons.info),
        ),
        // backgroundColor: CupertinoDynamicColor.withBrightness(color: Colors.white, darkColor: Colors.white ),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.grey.shade100,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
               SizedBox(height: 150,
                 child: Container(
                   height: MediaQuery.sizeOf(context).height*0.4,
                   width: MediaQuery.sizeOf(context).width*0.4,
                   decoration: const BoxDecoration(
                     shape: BoxShape.circle,
                     color: Colors.grey
                   ),
                   child: const Align(alignment:Alignment.center,child: Text("JA",style: TextStyle(color: Colors.white,fontSize: 30),)),
                 ),
               ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "John AppleSeeds",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: MediaQuery.sizeOf(context).height * 0.08,
                    width: MediaQuery.sizeOf(context).width * 0.25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          CupertinoIcons.ellipses_bubble_fill,
                          color: Colors.blue,
                        ),
                        Text("Message",style: TextStyle(color: Colors.black),),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.sizeOf(context).height * 0.08,
                    width: MediaQuery.sizeOf(context).width * 0.25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          CupertinoIcons.phone_fill,
                          color: Colors.blue,
                        ),
                        Text("Call",style: TextStyle(color: Colors.black),),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.sizeOf(context).height * 0.08,
                    width: MediaQuery.sizeOf(context).width * 0.25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          CupertinoIcons.mail_solid,
                          color: Colors.blue,
                        ),
                        Text("Mail",style: TextStyle(color: Colors.black),),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              // Calling
              Column(
                children: [
                  Container(
                    height: MediaQuery.sizeOf(context).height * 0.09,
                    width: MediaQuery.sizeOf(context).width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "mobile",
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                          Text(
                            "(888) 555-5512",
                            style: TextStyle(fontSize: 20, color: Colors.blue),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: MediaQuery.sizeOf(context).height * 0.09,
                    width: MediaQuery.sizeOf(context).width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "home",
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                          Text(
                            "(888) 555-1212",
                            style: TextStyle(fontSize: 20, color: Colors.blue),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: MediaQuery.sizeOf(context).height * 0.09,
                    width: MediaQuery.sizeOf(context).width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "work",
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                          Text(
                            "John-AppleSeeds@mac.com",
                            style: TextStyle(fontSize: 20, color: Colors.blue),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              CupertinoSlider(
                key: const Key('slider'),
                value: _currentSliderValue,
                divisions: 5,
                max: 100,
                activeColor: CupertinoColors.systemPurple,
                thumbColor: CupertinoColors.systemPurple,
                onChangeStart: (double value) {
                  setState(() {
                    _sliderStatus = 'Sliding';
                  });
                },
                onChangeEnd: (double value) {
                  setState(() {
                    _sliderStatus = 'Finished sliding';
                  });
                },
                onChanged: (double value) {
                  setState(() {
                    _currentSliderValue = value;
                  });
                },
              ),
              Container(
                height: MediaQuery.sizeOf(context).height * 0.15,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("work",style: TextStyle(fontSize: 15,color: Colors.black),),
                      Text("3484 Kuhi Avenue",style: TextStyle(fontSize: 15,color: Colors.black),),
                      Text("Atlanta GA 30303",style: TextStyle(fontSize: 15,color: Colors.black),),
                      Text("USA",style: TextStyle(fontSize: 15,color: Colors.black),),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: MediaQuery.sizeOf(context).height * 0.15,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("home",style: TextStyle(fontSize: 15,color: Colors.black),),
                      Text("1234 Laurel Street",style: TextStyle(fontSize: 15,color: Colors.black),),
                      Text("Atlanta GA 30303",style: TextStyle(fontSize: 15,color: Colors.black),),
                      Text("USA",style: TextStyle(fontSize: 15,color: Colors.black),),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}