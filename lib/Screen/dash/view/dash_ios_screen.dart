import 'package:flutter/cupertino.dart';
import 'package:ios_contact/Screen/contact_info/view/contact_info_screen.dart';
import 'package:ios_contact/Screen/home/view/home_screen.dart';
import 'package:provider/provider.dart';

import '../provider/dash_provider.dart';

class DashIosScreen extends StatefulWidget {
  const DashIosScreen({super.key});
  @override
  State<DashIosScreen> createState() => _DashIosScreenState();
}

class _DashIosScreenState extends State<DashIosScreen> {

  DashProvider? providerr;
  DashProvider? providerw;

  List<Widget> screens = [
    const HomeScreen(),
    const ContactInfoscreen(),
  ];

  @override
  Widget build(BuildContext context) {

    providerr = context.read<DashProvider>();
    providerw = context.watch<DashProvider>();
    return CupertinoTabView(
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Column(
            children: [
              IndexedStack(
                index: providerw!.stepIndex,
                children: screens,
              ),
              CupertinoTabBar(
                currentIndex: providerr!.stepIndex,
                onTap: (value) {
                  int i = value;
                  providerr!.changeStep(i);
                },
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.home), label: 'Home'),
                  BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.person), label: 'info'),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
