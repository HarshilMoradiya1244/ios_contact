import 'package:flutter/material.dart';

class ContactInfoScreenAndroid extends StatefulWidget {
  const ContactInfoScreenAndroid({super.key});

  @override
  State<ContactInfoScreenAndroid> createState() => _ContactInfoScreenAndroidState();
}

class _ContactInfoScreenAndroidState extends State<ContactInfoScreenAndroid> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(onPressed: (){Navigator.pop(context);},icon: const Icon(Icons.arrow_back,color: Colors.black,),),
                const SizedBox(width: 140,),
                IconButton(onPressed: (){},icon: const Icon(Icons.edit_outlined,color: Colors.black,),),
                IconButton(onPressed: (){},icon: const Icon(Icons.star_border_outlined,color: Colors.black,),),
                IconButton(onPressed: (){},icon: const Icon(Icons.more_vert,color: Colors.black,),),
              ],
            ),
            const SizedBox(height: 30,),
            Align(
              alignment: Alignment.center,
              child: CircleAvatar(
                backgroundColor: Colors.blue.shade400,
                radius: 80,
                child: const Text("S",style: TextStyle(fontSize: 80,color: Colors.white),),
              ),
            ),
            const SizedBox(height: 20,),
            const Text("Shubhman Gill",style: TextStyle(fontSize: 25,color: Colors.black),),
            const SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    SizedBox(height: 55,
                      child: Container(
                        height: MediaQuery.sizeOf(context).height*0.2,
                        width: MediaQuery.sizeOf(context).width*0.2,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey.shade400
                        ),
                        child: IconButton(onPressed: (){},icon: const Icon(Icons.phone_outlined,color: Colors.white,),),
                      ),
                    ),
                    const Text("Call"),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: 55,
                      child: Container(
                        height: MediaQuery.sizeOf(context).height*0.2,
                        width: MediaQuery.sizeOf(context).width*0.2,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey.shade400
                        ),
                        child: IconButton(onPressed: (){},icon: const Icon(Icons.message_outlined,color: Colors.white,),),
                      ),
                    ),
                    Text("Message"),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: 55,
                      child: Container(
                        height: MediaQuery.sizeOf(context).height*0.2,
                        width: MediaQuery.sizeOf(context).width*0.2,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey.shade400
                        ),
                        child: IconButton(onPressed: (){},icon: Icon(Icons.videocam_outlined,color: Colors.white,),),
                      ),
                    ),
                    Text("Video"),
                  ],
                )
              ],
            ),
            const SizedBox(height: 30,),
            Container(
              height: MediaQuery.sizeOf(context).height*0.35,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey.shade200
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Contact Info",style: TextStyle(color: Colors.black,fontSize: 20),),
                    const SizedBox(height: 20,),
                    Row(
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.phone_outlined)),
                        const SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("+91 1234567890"),
                            Text("Mobile"),
                          ],
                        ),
                        const SizedBox(width: 60,),
                        IconButton(onPressed: (){},icon: Icon(Icons.videocam_outlined,),),
                        IconButton(onPressed: (){},icon: const Icon(Icons.message_outlined,),),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.perm_phone_msg_outlined),),
                        const SizedBox(width: 10,),
                        Text("Message",style: TextStyle(fontSize: 17),),
                        const SizedBox(width: 10,),
                        Text("+91 1234567890"),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.phone_in_talk_outlined),),
                        const SizedBox(width: 10,),
                        Text("Voice Call",style: TextStyle(fontSize: 17),),
                        const SizedBox(width: 10,),
                        Text("+91 1234567890"),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.videocam_outlined),),
                        const SizedBox(width: 10,),
                        Text("Video Call",style: TextStyle(fontSize: 17),),
                        const SizedBox(width: 10,),
                        Text("+91 1234567890"),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ),);
  }
}
