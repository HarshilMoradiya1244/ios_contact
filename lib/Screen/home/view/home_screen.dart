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
    return  CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
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
              const SizedBox(
                height: 20,
              ),
              const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Contacts",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  )),
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
                    onTap: (){
                      Navigator.pushNamed(context, 'info');
                    },
                    child: CupertinoListTile(
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
                    onTap: (){
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
                    onTap: (){
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
                    onTap: (){
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
                    onTap: (){
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
                    onTap: (){
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
          ),
        ),
      ),
    );
  }
}