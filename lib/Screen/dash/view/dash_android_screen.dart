import 'package:flutter/material.dart';
import 'package:ios_contact/Screen/contact_info/view/contact_info_screen_android.dart';
import 'package:ios_contact/Screen/home/view/home_screen_android.dart';
import 'package:provider/provider.dart';
import '../provider/dash_provider.dart';

class DashAndroidScreen extends StatefulWidget {
  const DashAndroidScreen({super.key});

  @override
  State<DashAndroidScreen> createState() => _DashAndroidScreenState();
}

class _DashAndroidScreenState extends State<DashAndroidScreen> {
  DashProvider? providerr;
  DashProvider? providerw;

  List<Widget> screen = [
    const HomeScreenAndroid(),
    const ContactInfoScreenAndroid(),
  ];

  @override
  Widget build(BuildContext context) {
    providerr = context.read<DashProvider>();
    providerw = context.watch<DashProvider>();
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Align(
            alignment: Alignment.center,
              child: Text(
            "Phone Book",
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
          bottom: TabBar(
            onTap: (value) {
              int i = value;
              providerr!.changeStep(i);
            },
            tabs: const [
              Tab(
                icon: Icon(Icons.recent_actors),
              ),
              Tab(
                icon: Icon(Icons.person_2),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: screen,
        ),
      ),
    );
  }
}
