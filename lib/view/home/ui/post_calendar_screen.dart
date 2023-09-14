




import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:homescreen/view/home/ui/post_screen.dart';

import '../../../constants/activites_listView.dart';
import '../../../constants/reusable_text.dart';
import '../../ai_driven/ui/ai_driven.dart';
import '../../community/ui/community.dart';
import '../../manager/ui/manager.dart';
import 'calendar_screen_for_calendar_post.dart';
import 'calender_detail.dart';
import 'home_screen_navigation.dart';

class PostCalendarScreen extends StatefulWidget {
  const PostCalendarScreen({Key? key}) : super(key: key);

  @override
  State<PostCalendarScreen> createState() => _PostCalendarScreenState();
}

class _PostCalendarScreenState extends State<PostCalendarScreen> {
  int _currentIndex = 0;
  final List<Widget> _pages = <Widget>[
    const HomeScreen(),
    const AiDriven(),
    const Manager(),
    const Community(),
  ];

  bool isPost=true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: isPost==false?null:BottomAppBar(
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
        floatingActionButtonLocation: isPost==false?null:FloatingActionButtonLocation.centerDocked,
        floatingActionButton: isPost==false?null:InkWell(
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
        backgroundColor: const Color(0xffECE9EF),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                          onTap: () {
                            setState(() {
                              isPost=true;
                            });
                          },
                          child: Container(
                            height: Get.height*.05,
                            width: Get.width*.45,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: isPost?const Color(0xff1C73FF)
                                        .withOpacity(0.5):Colors.white,
                                    spreadRadius: -2,
                                    blurRadius: 4,
                                    offset: const Offset(0,
                                        5), // changes position of shadow
                                  )

                                ],
                                borderRadius: BorderRadius.circular(5),
                                color: isPost?const Color(0xff1C73FF):const Color(0xffffffff),
                            ),
                            child: Center(
                              child: Text(
                                "Posts",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: isPost?const Color(0xffFFFFFF):const Color(0xff000000)

                                ),
                              ),
                            ),
                          )),
                      InkWell(
                          onTap: () {
                            setState(() {
                              isPost=false;
                              Get.to(()=>CalenderDetail());
                            });
                          },
                          child: Container(
                            height: Get.height*.05,
                            width: Get.width*.45,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: isPost==false?const Color(0xff1C73FF)
                                        .withOpacity(0.5):Colors.white,
                                    spreadRadius: -2,
                                    blurRadius: 4,
                                    offset: const Offset(0,
                                        5), // changes position of shadow
                                  )

                                ],
                                borderRadius: BorderRadius.circular(5),
                                color: isPost?const Color(0xffffffff):const Color(0xff1C73FF),

                            ),
                            child: Center(
                              child: Text(
                                "Calendar",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: isPost?const Color(0xff000000):const Color(0xffFFFFFF)
                                  // color: isRejectYT
                                  //     ? const Color(0xffFFFFFF):
                                  // isRejectInsta
                                  //     ? const Color(0xffFFFFFF):
                                  // isRejectFb
                                  //     ? const Color(0xffFFFFFF)
                                  //     : const Color(0xff000000)),
                                ),
                              ),
                            ),
                          )),
                    ],
                  ),
                ),

                Visibility(
                  visible: isPost,
                    child: SizedBox(
                        width: double.infinity,
                        height: Get.height*.9,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const ReusableText(
                                    title: 'Our Posts',
                                    size: 18,
                                    weight: FontWeight.w700,
                                  ),
                                Container(
                                  height: 34,
                                  width: 34,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xff12C6FF)),
                                  child: const Image(
                                      image: AssetImage(
                                          "images/icons/moreIcon2.png"))
                                ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            ActivitiesListView()
                          ],
                        ))),
                Visibility(
                    visible: !isPost,
                    child: SingleChildScrollView(
                      child: SizedBox(
                          width: double.infinity,
                          height: Get.height*.8,
                          child: CalenderDetail(calendarPageView:true),
                          // child: const CalendarForPost()
                        ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
