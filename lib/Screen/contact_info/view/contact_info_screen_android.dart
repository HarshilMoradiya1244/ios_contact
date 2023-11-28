import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ios_contact/Screen/contact_info/provider/contac_info_provider.dart';
import 'package:ios_contact/Screen/home/provider/home_screen_provder.dart';
import 'package:provider/provider.dart';

class ContactInfoScreenAndroid extends StatefulWidget {
  const ContactInfoScreenAndroid({super.key});

  @override
  State<ContactInfoScreenAndroid> createState() =>
      _ContactInfoScreenAndroidState();
}

class _ContactInfoScreenAndroidState extends State<ContactInfoScreenAndroid> {
  ContactInfoProvider? ProviderR;
  ContactInfoProvider? ProviderW;

  @override
  Widget build(BuildContext context) {
    ProviderR = context.read<ContactInfoProvider>();
    ProviderW = context.watch<ContactInfoProvider>();
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(onPressed: () {
                    Navigator.pop(context);
                  }, icon: const Icon(Icons.arrow_back, color: Colors.black,),),
                  const SizedBox(width: 140,),
                  IconButton(onPressed: () {},
                    icon: const Icon(
                      Icons.edit_outlined, color: Colors.black,),),
                  IconButton(onPressed: () {},
                    icon: const Icon(
                      Icons.star_border_outlined, color: Colors.black,),),
                  IconButton(onPressed: () {},
                    icon: const Icon(Icons.more_vert, color: Colors.black,),),
                ],
              ),
              const SizedBox(height: 30,),
              Align(
                alignment: Alignment.center,
                child: CircleAvatar(
                  backgroundColor: Colors.blue.shade400,
                  radius: 80,
                  child: const Text(
                    "S", style: TextStyle(fontSize: 80, color: Colors.white),),
                ),
              ),
              const SizedBox(height: 20,),
              const Text("Shubhman Gill",
                style: TextStyle(fontSize: 25, color: Colors.black),),
              const SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      SizedBox(height: 55,
                        child: Container(
                          height: MediaQuery
                              .sizeOf(context)
                              .height * 0.2,
                          width: MediaQuery
                              .sizeOf(context)
                              .width * 0.2,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey.shade400
                          ),
                          child: IconButton(onPressed: () {}, icon: const Icon(
                            Icons.phone_outlined, color: Colors.white,),),
                        ),
                      ),
                      const Text("Call"),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(height: 55,
                        child: Container(
                          height: MediaQuery
                              .sizeOf(context)
                              .height * 0.2,
                          width: MediaQuery
                              .sizeOf(context)
                              .width * 0.2,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey.shade400
                          ),
                          child: IconButton(onPressed: () {}, icon: const Icon(
                            Icons.message_outlined, color: Colors.white,),),
                        ),
                      ),
                      const Text("Message"),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(height: 55,
                        child: Container(
                          height: MediaQuery
                              .sizeOf(context)
                              .height * 0.2,
                          width: MediaQuery
                              .sizeOf(context)
                              .width * 0.2,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey.shade400
                          ),
                          child: IconButton(onPressed: () {}, icon: const Icon(
                            Icons.videocam_outlined, color: Colors.white,),),
                        ),
                      ),
                      const Text("Video"),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 30,),
              Container(
                height: MediaQuery
                    .sizeOf(context)
                    .height * 0.60,
                width: MediaQuery
                    .sizeOf(context)
                    .width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.shade200
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Contact Info",
                        style: TextStyle(color: Colors.black, fontSize: 20),),
                      const SizedBox(height: 20,),
                      Row(
                        children: [
                          IconButton(onPressed: () {}, icon: const Icon(
                              Icons.phone_outlined)),
                          const SizedBox(width: 6,),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("+91 1234567890"),
                              Text("Mobile"),
                            ],
                          ),
                          const SizedBox(width: 60,),
                          IconButton(onPressed: () {}, icon: const Icon(
                            Icons.videocam_outlined,),),
                          IconButton(onPressed: () {}, icon: const Icon(
                            Icons.message_outlined,),),
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(onPressed: () {}, icon: const Icon(
                              Icons.perm_phone_msg_outlined),),
                          const SizedBox(width: 10,),
                          const Text(
                            "Message", style: TextStyle(fontSize: 17),),
                          const SizedBox(width: 10,),
                          const Text("+91 1234567890"),
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(onPressed: () {}, icon: const Icon(
                              Icons.phone_in_talk_outlined),),
                          const SizedBox(width: 10,),
                          const Text("Voice Call", style: TextStyle(
                              fontSize: 17),),
                          const SizedBox(width: 10,),
                          const Text("+91 1234567890"),
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(onPressed: () {}, icon: const Icon(
                              Icons.videocam_outlined),),
                          const SizedBox(width: 10,),
                          const Text("Video Call", style: TextStyle(
                              fontSize: 17),),
                          const SizedBox(width: 10,),
                          const Text("+91 1234567890"),
                        ],
                      ),
                      Row(
                        children: [
                          const Padding(padding: EdgeInsets.all(10)),
                          Text("Date : ${ProviderR!.date?.day}/${ProviderR!.date
                              ?.month}/${ProviderR!.date?.year}",
                            style: const TextStyle(fontSize: 18),),
                          const Spacer(),
                          IconButton(onPressed: () async {
                            DateTime? d1 = await showDatePicker(
                                context: context,
                                initialDate: ProviderR!.date!,
                                firstDate: DateTime(2001),
                                lastDate: DateTime(2050));
                            ProviderR!.changeDate(d1!);
                          }, icon: const Icon(Icons.calendar_month))
                        ],
                      ),
                      Row(
                        children: [
                          const Padding(padding: EdgeInsets.all(10)),
                          Text(
                            "Time : ${ProviderR!.time!.hour}:${ProviderW!.time!
                                .minute}",
                            style: TextStyle(fontSize: 18),),
                          const Spacer(),
                          IconButton(onPressed: () async {
                           TimeOfDay? d2 = await showTimePicker(
                                context: context,
                               initialTime: ProviderR!.time!);
                            ProviderR!.changeTime(d2!);
                          }, icon: const Icon(Icons.timer_outlined),),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
