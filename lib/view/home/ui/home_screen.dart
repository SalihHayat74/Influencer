import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:homescreen/constants/reusable_text.dart';
import 'package:homescreen/view/home/ui/post_calendar_screen.dart';

import '../../ai_driven/ui/ai_driven.dart';
import '../../auth/ui/sign_in.dart';
import '../../community/ui/community.dart';
import 'calender_detail.dart';
import 'drawer.dart';
import 'home_screen_navigation.dart';
import '../../manager/ui/manager.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _pages = <Widget>[
    const HomeScreen(),
    const AiDriven(),
    const Manager(),
    const Community(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: const Color(0xffECE9EF),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        clipBehavior: Clip.antiAlias,
        child: Container(
          height: 70,
          padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    _currentIndex = 0;
                  });
                },
                child: SizedBox(
                  height: 50,
                  width: 60,
                  child: Column(
                    children: [
                      Image.asset(
                        'images/icons/home.png',
                        color: _currentIndex == 0 ? Colors.black : Colors.grey,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      ReusableText(
                        title: 'Home',
                        size: 12,
                        weight: FontWeight.w500,
                        color: _currentIndex == 0 ? Colors.black : Colors.grey,
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    _currentIndex = 1;
                  });
                },
                child: SizedBox(
                  height: 50,
                  width: 60,
                  child: Column(
                    children: [
                      Image.asset(
                        'images/icons/aiDriven.png',
                        color: _currentIndex == 1 ? Colors.black : Colors.grey,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      ReusableText(
                        title: 'Ai Driven',
                        weight: FontWeight.w500,
                        size: 12,
                        color: _currentIndex == 1 ? Colors.black : Colors.grey,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 40,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    _currentIndex = 2;
                  });
                },
                child: SizedBox(
                  height: 50,
                  width: 60,
                  child: Column(
                    children: [
                      Image.asset(
                        'images/icons/manager.png',
                        color: _currentIndex == 2 ? Colors.black : Colors.grey,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      ReusableText(
                        title: 'Manager',
                        weight: FontWeight.w500,
                        size: 12,
                        color: _currentIndex == 2 ? Colors.black : Colors.grey,
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    _currentIndex = 3;
                  });
                },
                child: SizedBox(
                  height: 50,
                  width: 70,
                  child: Column(
                    children: [
                      Image.asset(
                        'images/icons/community.png',
                        color: _currentIndex == 3 ? Colors.black : Colors.grey,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      ReusableText(
                        weight: FontWeight.w500,
                        title: 'Community',
                        size: 12,
                        color: _currentIndex == 3 ? Colors.black : Colors.grey,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: InkWell(
        onTap: (){
          Get.to(()=>const PostCalendarScreen());
          // showDialog(context: context,
          //     builder: (context){
          //   return const CalenderDetail();
          //     });
        },
        child: Container(
          width: 70,
          height: 70,
          decoration:
              const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
          child: Image.asset(
            'images/icons/main_button.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
