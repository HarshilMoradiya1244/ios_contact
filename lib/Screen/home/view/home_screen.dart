import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: Row(
          children: [
            Icon(CupertinoIcons.back),
            Text(
              "Lists",
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        trailing: Icon(CupertinoIcons.add),
        // backgroundColor: CupertinoDynamicColor.withBrightness(color: Colors.white, darkColor: Colors.white ),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Contacts",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: 20,
              ),
              CupertinoSearchTextField(
                placeholder: 'Search',
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "A",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )),
                  Divider(
                    thickness: 1,
                  ),
                  CupertinoListTile(
                    title: Text(
                      "John AppleSeeds",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "B",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )),
                  Divider(
                    thickness: 1,
                  ),
                  CupertinoListTile(
                    title: Text(
                      "Kate Bell",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "H",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )),
                  Divider(
                    thickness: 1,
                  ),
                  CupertinoListTile(
                    title: Text(
                      "Annna Haro",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  CupertinoListTile(
                    title: Text(
                      "Danniel Hinggis Jr",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "T",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )),
                  Divider(
                    thickness: 1,
                  ),
                  CupertinoListTile(
                    title: Text(
                      "Davis Taylor ",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Z",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )),
                  Divider(
                    thickness: 1,
                  ),
                  CupertinoListTile(
                    title: Text(
                      "Hark M Zakroff",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  SizedBox(
                    height: 20,
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
