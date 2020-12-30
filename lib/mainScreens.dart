import 'package:flutter/material.dart';
import 'package:linkedin/pages/notification_page.dart';
import 'package:linkedin/pages/my_network.dart';
import 'package:linkedin/pages/post_page.dart';
import 'package:linkedin/pages/home_page.dart';
import 'package:linkedin/pages/job_page.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
      bottomNavigationBar: _bottomBar(),
    );
  }

  Widget _body() {
    switch (currentIndex) {
      case 0:
        return HomePage();
      case 1:
        return MyNetworkPage();
      case 3:
        return NotificationPage();
      case 4:
        return JobsPage();
      default:
        return HomePage();
    }
  }

  Widget _bottomBar() {
    return Container(
      child: BottomNavigationBar(
        showSelectedLabels: true,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        backgroundColor: Colors.grey.shade100,
        elevation: 0,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        fixedColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Column(
              children: [
                Divider(),
                Icon(
                  Icons.home,
                  color: Colors.grey.shade500,
                ),
              ],
            ),
            activeIcon: Column(
              children: [
                Divider(
                  color: Colors.black,
                ),
                Icon(
                  Icons.house,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          BottomNavigationBarItem(
            label: "MyNetwork",
            icon: Column(
              children: [
                Divider(),
                Icon(
                  Icons.supervisor_account_outlined,
                  color: Colors.grey,
                ),
              ],
            ),
            activeIcon: Column(
              children: [
                Divider(
                  color: Colors.black,
                ),
                Icon(
                  Icons.people_alt_rounded,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          BottomNavigationBarItem(
            label: "Post",
            icon: Column(
              children: [
                Divider(),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return PostPage();
                        },
                      ),
                    );
                  },
                  child: Icon(
                    Icons.add_box_sharp,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            //  activeIcon: Container(
            //    decoration: BoxDecoration( ),
            //    child: Icon(
            //      Icons.add_box_sharp,
            //      color: Colors.black,
            //    ),
            //  ),
          ),
          BottomNavigationBarItem(
            label: "Notifications",
            icon: Column(
              children: [
                Divider(),
                Icon(
                  Icons.notifications_active,
                  color: Colors.grey,
                ),
              ],
            ),
            activeIcon: Column(
              children: [
                Divider(color: Colors.black),
                Icon(
                  Icons.notifications_active_outlined,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          BottomNavigationBarItem(
            label: "Jobs",
            icon: Column(
              children: [
                Divider(),
                Icon(
                  Icons.home_repair_service_sharp,
                  color: Colors.grey,
                ),
              ],
            ),
            activeIcon: Column(
              children: [
                Divider(
                  color: Colors.black,
                ),
                Icon(
                  Icons.wallet_travel,
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
