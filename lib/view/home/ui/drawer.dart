



import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:homescreen/view/home/ui/post_screen.dart';

import '../../../GetX Controller/auth_controller.dart';
import '../../../constants/reusable_tile.dart';
import '../../../themes/theme.dart';
import '../../auth/ui/sign_in.dart';
import '../../direct_message_and_comments/ui/messages_and_comment.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppTheme.mainThemeColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            const SizedBox(height: 80),
            Stack(
              children: const [
                CircleAvatar(
                  radius: 60,
                  // backgroundImage: NetworkImage(userModel.image!),
                ),
              ],
            ),
            const SizedBox(height: 5),
            const Divider(color: Colors.blueGrey),
            const SizedBox(height: 20),
            ReusableTile(
              icon: Icons.calendar_month,
              title: "Dm & Comment Manager",
              onTap: () {
                Get.to(()=>MessagesAndComment());
                // navigateToPage(context, const AppointmentsScreen());
              },
            ),
            ReusableTile(
              icon: Icons.calendar_month,
              title: "Create Post",
              onTap: () {
                Get.to(()=>Post());
                // navigateToPage(context, const AppointmentsScreen());
              },
            ),
            ReusableTile(
              icon: Icons.settings,
              title: "Settings",
              onTap: () {},
            ),
            ReusableTile(
              icon: Icons.person,
              title: "My Profile",
              onTap: () {},
            ),
            const Spacer(),
            ReusableTile(
              icon: Icons.logout_rounded,
              title: "Log Out",
              onTap: () {
                showDialog(context: context,
                    builder: (context){
                  return AlertDialog(
                    content: const Text("Are you sure to logout"),

                    actions: [
                      TextButton(
                          onPressed: ()async{
                            await FirebaseAuth.instance.signOut().then((value){
                              Get.to(()=>const SignInScreen());
                            }).catchError((error){
                              print(error);
                            });

                          },
                          child: const Text("Logout")),
                      TextButton(
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          child: const Text("Cancel"))
                    ],
                  );

                    });

              },
            ),
          ],
        ),
      ),
    );
  }
}