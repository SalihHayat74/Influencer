import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../constants/changing_screen.dart';
import '../constants/reusable_text.dart';
import '../view/brand_manager/ui/brand_manager.dart';
import '../view/home/ui/post_screen.dart';

class AppBarDetail extends StatelessWidget {
  const AppBarDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const[
            ReusableText(
              title: 'Welcome',
              size: 14,
              weight: FontWeight.w400,
            ),
            ReusableText(
              title: 'James Doe',
              size: 20,
              weight: FontWeight.w700,
            ),
          ],
        ),
        Row(
          children: [
            Column(
              children: const[
                Image(image: AssetImage('images/icons/up.png')),
                SizedBox(
                  height: 7,
                ),
                Image(image: AssetImage('images/icons/down.png'))
              ],
            ),
            const SizedBox(
              width: 30,
            ),
            InkWell(
              onTap: () {
                Get.to(()=>const BrandManager());
                // nextScreen(context, const Post());
              },
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.topRight,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 4, right: 5),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                          color: const Color(0xffF9F9F9),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Image(
                        image: AssetImage('images/icons/user.png'),
                      ),
                    ),
                  ),
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.white,
                    child: Container(
                      height: 12,
                      width: 12,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xffE74C3C)),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 10,
            )
          ],
        )
      ],
    );
  }
}
