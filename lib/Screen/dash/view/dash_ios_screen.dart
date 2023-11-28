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
  int selectedValue = 0;

  List<Widget> screens = [
    const HomeScreen(),
    const ContactInfoscreen(),
  ];
  Map<int,Widget>children = <int,Widget>{
    0:const Padding(padding: EdgeInsets.symmetric(horizontal: 5),child: Text("Contact"),),
    1:const Padding(padding: EdgeInsets.symmetric(horizontal: 5),child: Text("Contact Info"),)
  };
  @override
  Widget build(BuildContext context) {

    providerr = context.read<DashProvider>();
    providerw = context.watch<DashProvider>();
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: CupertinoSlidingSegmentedControl(
           groupValue: selectedValue,
           onValueChanged: (value) {
            selectedValue = value!;
           providerw!.changeStep(selectedValue);
          }, children: children,

        ),
      ),
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          backgroundColor: CupertinoColors.white,
          currentIndex: providerr!.stepIndex,
          onTap: (value) {
            int i= value;
            providerr!.changeStep(i);
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person), label: 'Contact'),
          ],
        ),
        tabBuilder: (context, index) {
          return CupertinoTabView(
            builder: (BuildContext context) {
              return screens[providerw!.stepIndex];
            },
          );
        },
      ),
    );
  }
}
