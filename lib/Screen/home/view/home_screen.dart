import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ios_contact/Screen/home/provider/home_screen_provder.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeProvider? ProviderR;
  HomeProvider? ProviderW;

  @override
  Widget build(BuildContext context) {
    ProviderR = context.read<HomeProvider>();
    ProviderW = context.watch<HomeProvider>();
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: const Row(
          children: [
            Icon(CupertinoIcons.back),
            Text(
              "Lists",
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        trailing: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
                "${ProviderR!.date?.day}/${ProviderR!.date?.month}/${ProviderR!
                    .date?.year}"),
            const SizedBox(
              width: 10,
            ),
            GestureDetector(
                onTap: () {
                  showCupertinoModalPopup(
                    context: context,
                    builder: (context) =>
                        SizedBox(
                          height: 200,
                          child: CupertinoDatePicker(
                            initialDateTime: ProviderR!.date,
                            backgroundColor: Colors.white,
                            onDateTimeChanged: (value) {
                              ProviderR!.changeDate(value);
                            },
                            minimumDate: DateTime(2001),
                            minimumYear: 2001,
                            maximumDate: DateTime(2050),
                            maximumYear: 2050,
                          ),
                        ),
                  );
                },
                child: const Icon(CupertinoIcons.calendar)),
            const SizedBox(
              width: 10,
            ),
            const Icon(CupertinoIcons.add),
          ],
        ),
        // backgroundColor: CupertinoDynamicColor.withBrightness(color: Colors.white, darkColor: Colors.white ),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
            const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Contacts",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Spacer(),
              Text("Time : ${ProviderR!.time!.hour}:${ProviderW!.time!.minute}:${ProviderW!.time!.second}"),
              const SizedBox(
                height: 20,
              ),
                  GestureDetector(onTap: (){
                    showCupertinoModalPopup(context: context,
                      builder:(context) => SizedBox(
                        height: 200,
                        child: CupertinoDatePicker(
                          backgroundColor: Colors.white,
                            initialDateTime: ProviderR!.time,
                            mode: CupertinoDatePickerMode.time,
                            use24hFormat: true,
                            onDateTimeChanged: (value) {
                              ProviderR!.changeTime(value);
                            },),
                      ),
                    );
                  },child: const Icon(CupertinoIcons.time)),
                  ]),
              const SizedBox(
                height: 20,
              ),
              const CupertinoSearchTextField(
                placeholder: 'Search',
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "A",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'info');
                    },
                    child: const CupertinoListTile(
                      title: Text(
                        "John AppleSeeds",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //
                  const Text(
                    "B",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'info');
                    },
                    child: const CupertinoListTile(
                      title: Text(
                        "Kate Bell",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //
                  const Text(
                    "H",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'info');
                    },
                    child: const CupertinoListTile(
                      title: Text(
                        "Annna Haro",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'info');
                    },
                    child: const CupertinoListTile(
                      title: Text(
                        "Danniel Hinggis Jr",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //
                  const Text(
                    "T",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'info');
                    },
                    child: const CupertinoListTile(
                      title: Text(
                        "Davis Taylor ",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //
                  const Text(
                    "Z",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'info');
                    },
                    child: const CupertinoListTile(
                      title: Text(
                        "Hark M Zakroff",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              )
            ],
          ),)
        ,
      )
      ,
    );
  }
}
