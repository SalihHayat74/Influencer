import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:homescreen/constants/changing_screen.dart';

import '../../constants/reusable_text.dart';
import '../view/home/ui/post_detail.dart';
import '../view/manager/ui/event_detail.dart';
import '../view/manager/ui/suspendisse_interdum.dart';

class ManagerConstWidget extends StatelessWidget {
  const ManagerConstWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height*.43,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                const RotatedBox(
                  quarterTurns: 1,
                  child: ReusableText(
                    title: 'Pending',
                    size: 14,
                    weight: FontWeight.w700,
                    color: Color(0xff7E8CA0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: Get.width*.07, top: 10),
                  child: Container(
                    alignment: Alignment.topRight,
                    height: 77,
                    width: 280,
                    decoration: BoxDecoration(
                        color: const Color(0xffECE9EF),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0xffE2E2EA),
                            blurRadius: 0,
                            offset: Offset(0, 0.5),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 3.0),
                          child: Container(
                              height: double.infinity,
                              width: 3,
                              color: const Color(0xffD93C3C)),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: (){
                            Get.to(()=>const PostDetails());
                          },
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('images/icons/facebook1.png')),
                                shape: BoxShape.circle,
                                color: Colors.blueGrey),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: ()=>Get.to(()=>EventDetails()),
                              child: const ReusableText(
                                title: 'Nulla imperdiet in nunc',
                                weight: FontWeight.w500,
                                size: 14,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    nextScreen(
                                        context, const SuspendisseInterdum());
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.all(4),
                                    height: 22,
                                    width: 64,
                                    decoration: BoxDecoration(
                                        color: const Color(0xff0062FF),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: const ReusableText(
                                      title: 'More Info',
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Image.asset('images/icons/imageIcon.png'),
                                const SizedBox(
                                  width: 4,
                                ),
                                const ReusableText(
                                  title: 'Images',
                                  weight: FontWeight.w500,
                                  size: 11,
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Image.asset('images/icons/storyIcon.png'),
                                const SizedBox(
                                  width: 4,
                                ),
                                const ReusableText(
                                  title: 'Story',
                                  weight: FontWeight.w500,
                                  size: 11,
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.9),
              child: Container(
                height: 20,
                width: 1,
                color: const Color(0xffE2E2EA),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: Get.width*.35, top: 10),
              child: Container(
                alignment: Alignment.topRight,
                height: 70,
                width: 261,
                decoration: BoxDecoration(
                    color: const Color(0xffECE9EF),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0xffE2E2EA),
                        blurRadius: 0,
                        offset: Offset(0, 0.5),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3.0),
                      child: Container(
                          height: double.infinity,
                          width: 3,
                          color: const Color(0xff41D1FF)),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/icons/twitter1.png')),
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const ReusableText(
                          title: 'Suspendisse interdum',
                          weight: FontWeight.w500,
                          size: 14,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.all(4),
                          height: 22,
                          width: 64,
                          decoration: BoxDecoration(
                              color: const Color(0xff0062FF),
                              borderRadius: BorderRadius.circular(5)),
                          child: const ReusableText(
                            title: 'More Info',
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.9),
              child: Container(
                height: 40,
                width: 1,
                color: const Color(0xffE2E2EA),
              ),
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: RotatedBox(
                    quarterTurns: 1,
                    child: ReusableText(
                      title: 'Run',
                      size: 14,
                      weight: FontWeight.w700,
                      color: Color(0xff7E8CA0),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: Get.width*.158, top: 10),
                  child: Container(
                    alignment: Alignment.topRight,
                    height: 70,
                    width: 261,
                    decoration: BoxDecoration(
                        color: const Color(0xffECE9EF),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0xffE2E2EA),
                            blurRadius: 0,
                            offset: Offset(0, 0.5),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 3.0),
                          child: Container(
                              height: double.infinity,
                              width: 3,
                              color: const Color(0xff5D5FEF)),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('images/icons/instagram1.png')),
                            shape: BoxShape.circle,
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const ReusableText(
                              title: 'Fusce felis purus',
                              weight: FontWeight.w500,
                              size: 14,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: const EdgeInsets.all(4),
                              height: 22,
                              width: 64,
                              decoration: BoxDecoration(
                                  color: const Color(0xff0062FF),
                                  borderRadius: BorderRadius.circular(5)),
                              child: const ReusableText(
                                title: 'More Info',
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.9),
              child: Container(
                height: 20,
                width: 1,
                color: const Color(0xffE2E2EA),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: Get.width*.35, top: 10),
              child: Container(
                alignment: Alignment.topRight,
                height: 70,
                width: 261,
                decoration: BoxDecoration(
                    color: const Color(0xffECE9EF),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0xffE2E2EA),
                        blurRadius: 0,
                        offset: Offset(0, 0.5),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3.0),
                      child: Container(
                          height: double.infinity,
                          width: 3,
                          color: const Color(0xff41D1FF)),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/icons/linkedIn1.png')),
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const ReusableText(
                          title: 'Morbi semper cursus',
                          weight: FontWeight.w500,
                          size: 14,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.all(4),
                          height: 22,
                          width: 64,
                          decoration: BoxDecoration(
                              color: const Color(0xff0062FF),
                              borderRadius: BorderRadius.circular(5)),
                          child: const ReusableText(
                            title: 'More Info',
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.9),
              child: Container(
                height: 20,
                width: 1,
                color: const Color(0xffE2E2EA),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: Get.width*.105, top: 10),
              child: Container(
                alignment: Alignment.topRight,
                height: 77,
                width: 280,
                decoration: BoxDecoration(
                    color: const Color(0xffECE9EF),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0xffE2E2EA),
                        blurRadius: 0,
                        offset: Offset(0, 0.5),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3.0),
                      child: Container(
                          height: double.infinity,
                          width: 3,
                          color: const Color(0xffD93C3C)),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/icons/facebook1.png')),
                          shape: BoxShape.circle,
                          color: Colors.blueGrey),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const ReusableText(
                          title: 'Nulla imperdiet in nunc',
                          weight: FontWeight.w500,
                          size: 14,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(4),
                              height: 22,
                              width: 64,
                              decoration: BoxDecoration(
                                  color: const Color(0xff0062FF),
                                  borderRadius: BorderRadius.circular(5)),
                              child: const ReusableText(
                                title: 'More Info',
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Image.asset('images/icons/imageIcon.png'),
                            const SizedBox(
                              width: 4,
                            ),
                            const ReusableText(
                              title: 'Images',
                              weight: FontWeight.w500,
                              size: 11,
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Image.asset('images/icons/storyIcon.png'),
                            const SizedBox(
                              width: 4,
                            ),
                            const ReusableText(
                              title: 'Story',
                              weight: FontWeight.w500,
                              size: 11,
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
