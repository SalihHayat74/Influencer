import 'package:flutter/material.dart';
import 'package:homescreen/constants/reusable_text.dart';
import 'package:homescreen/view/home/ui/calander_detail_container.dart';

import '../../../constants/calender_detail_listview.dart';

class CalenderDetail extends StatefulWidget {
  bool? calendarPageView;
  CalenderDetail({this.calendarPageView=false,Key? key}) : super(key: key);
  @override
  State<CalenderDetail> createState() => _CalenderDetailState();
}

class _CalenderDetailState extends State<CalenderDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffECE9EF),
      body: SingleChildScrollView(
        child: Column(
          children: [
            widget.calendarPageView==true?const SizedBox(height: 20):const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: const Icon(
                    Icons.arrow_back_ios_new_rounded,
                    size: 20,
                  ),
                ),
                const ReusableText(
                  title: 'March 2023',
                ),
                Container(
                  height: 30,
                  width: 35,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: const Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 20,
                  ),
                )
              ],
            ),

            const SizedBox(
              height: 20,
            ),
            const DateCalenderDetailListView(),
            const CalenderDetailContainer(),
            const SizedBox(
              height: 20,
            ),
           widget.calendarPageView==true?Column(
             children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                   Container(
                     height: 30,
                     width: 30,
                     decoration: const BoxDecoration(
                         shape: BoxShape.circle, color: Colors.white),
                     child: const Icon(
                       Icons.arrow_back_ios_new_rounded,
                       size: 20,
                     ),
                   ),
                   const ReusableText(
                     title: 'March 2023',
                   ),
                   Container(
                     height: 30,
                     width: 35,
                     decoration: const BoxDecoration(
                         shape: BoxShape.circle, color: Colors.white),
                     child: const Icon(
                       Icons.arrow_forward_ios_outlined,
                       size: 20,
                     ),
                   )
                 ],
               ),
               const SizedBox(
                 height: 20,
               ),
               const DateCalenderDetailListView(),
               const CalenderDetailContainer(),
             ],
           ):
           const SizedBox()
          ],
        ),
      ),
    );
  }
}
