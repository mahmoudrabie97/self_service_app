import 'package:flutter/material.dart';

import 'package:self_service_app/pages/attendence/attendence_page.dart';
import 'package:self_service_app/pages/home/home_page.dart';
import 'package:self_service_app/pages/profile_page/profile_page.dart';
import 'package:self_service_app/pages/request_page/request_page.dart';
import 'package:self_service_app/utlities/appcolors.dart';
import 'package:self_service_app/utlities/custommethods.dart';

class RootBottmNav extends StatefulWidget {
  const RootBottmNav({Key? key}) : super(key: key);

  @override
  State<RootBottmNav> createState() => _RootBottmNavState();
}

class _RootBottmNavState extends State<RootBottmNav> {
  int currentindex = 0;
  final List<Widget> pages = <Widget>[
    const HomePage(),
    const AttendencePage(),
    const RequestPage(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        bool? shouldExit = await showExitConfirmationDialog(context: context);
        return shouldExit ?? false;
      },
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.add,
            size: 20,
          ),
        ),
        backgroundColor: Colors.grey.shade100,
        body: pages[currentindex],
        bottomNavigationBar: buildBottomNavBar(),
      ),
    );
  }

  Widget buildBottomNavBar() {
    return BottomNavigationBar(
      selectedItemColor: Colors.brown,
      unselectedItemColor: Colors.grey,
      unselectedLabelStyle: const TextStyle(color: Colors.red),
      currentIndex: currentindex,
      onTap: (value) {
        setState(() {
          currentindex = value;
        });
      },
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home '),
        BottomNavigationBarItem(
            icon: Icon(Icons.bookmark), label: 'Attendance'),
        BottomNavigationBarItem(
          icon: Icon(Icons.task),
          label: 'Requests',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ],
    );
  }
}
