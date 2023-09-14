import 'package:dotted_dashed_line/dotted_dashed_line.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../constants/chart.dart';
import '../../../constants/dateListView.dart';
import '../../../constants/inquiryListView.dart';
import '../../../constants/manager_conts_wideget.dart';
import '../../../constants/manager_listView.dart';
import '../../../constants/reusable_text.dart';
import 'calender_detail.dart';

class CalendarForPost extends StatefulWidget {
  const CalendarForPost({Key? key}) : super(key: key);

  @override
  State<CalendarForPost> createState() => _CalendarForPostState();
}

class _CalendarForPostState extends State<CalendarForPost> {
  int _currentIndex = 0;
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffECE9EF),
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              // const SizedBox(
              //   height: 20,
              // ),
             Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // const SizedBox(
                    //   height: 20,
                    // ),
                    Row(
                      children: [
                        const Text(
                          "Our Posts",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        ),
                        const Spacer(),
                        InkWell(
                          onTap:  ()=>Get.to(()=>CalenderDetail()),
                          child: Container(
                            height: 34,
                            width: 34,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xff12C6FF)),
                            child: const Image(
                                image: AssetImage(
                                    "images/icons/moreIcon2.png")),
                        )
                        )],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    // Row(
                    //   children: [
                    //
                    //
                    //    IconButton(onPressed: (){
                    //      Get.to(()=>const CalenderDetail());
                    //    }, icon: Icon(Icons.display_settings_rounded))
                    //   ],
                    // ),
                    // const SizedBox(
                    //   height: 10,
                    // ),
                    currentIndex == 0
                        ? Container(
                      alignment: Alignment.topLeft,
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              const SizedBox(
                                height: 50,
                              ),
                              Container(
                                width: double.infinity,
                                color: const Color(0xffE2E2EA),
                                height: 1,
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.start,
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    width: 60,
                                  ),
                                  Container(
                                    height: 300,
                                    color:
                                    const Color(0xffE2E2EA),
                                    width: 1,
                                  ),
                                  const SizedBox(
                                    width: 300,
                                  ),
                                  Container(
                                    height: 85,
                                    width: 2,
                                    color:
                                    const Color(0xffE2E2EA),
                                  )
                                ],
                              ),
                              Container(
                                width: double.infinity,
                                color: const Color(0xffE2E2EA),
                                height: 1,
                              ),
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 60,
                                  ),
                                  Container(
                                    height: 300,
                                    color:
                                    const Color(0xffE2E2EA),
                                    width: 1,
                                  )
                                ],
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment:
                            MainAxisAlignment.start,
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: const [
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding:
                                EdgeInsets.only(left: 10),
                                child: ReusableText(
                                  textAlign: TextAlign.start,
                                  title: 'Jul 2023',
                                  size: 16,
                                  weight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(
                                height: 35,
                              ),
                              DateCalenderListListView(),
                              SizedBox(
                                height: 10,
                              ),
                              ManagerConstWidget()
                            ],
                          ),
                        ],
                      ),
                    )
                        : Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 30,
                          width: 75,
                          decoration: BoxDecoration(
                            color: const Color(0xffE74C3C),
                            borderRadius:
                            BorderRadius.circular(5),
                          ),
                          child: const Center(
                            child: Text(
                              "20th June",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            const Expanded(
                              flex: 1,
                              child: DottedDashedLine(
                                width: 2,
                                axis: Axis.vertical,
                                height: 560,
                                dashHeight: 3,
                                dashColor: Color(0xffE74C3C),
                              ),
                            ),
                            Expanded(
                                flex: 199,
                                child: ManagerListView()),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
