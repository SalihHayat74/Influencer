

import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:homescreen/constants/reusable_text.dart';
import 'package:homescreen/themes/theme.dart';
import 'package:homescreen/view/auth/ui/reusable_button.dart';
import 'package:homescreen/view/auth/ui/sign_in.dart';
import 'package:homescreen/view/home/ui/home_screen_navigation.dart';

import '../../../constants/reusable_text_field.dart';
import 'auth_footer.dart';


class VerificationScreen extends StatefulWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {

  TextEditingController nameController=TextEditingController();
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  TextEditingController confirmPasswordController=TextEditingController();

  bool isEmailVerified=false;
  bool isLoading=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffECE9EF),
        body:SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(top:Get.height*.3,left:20,right: 20,bottom: 20),
              child: Column(
                crossAxisAlignment:CrossAxisAlignment.center,
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  const ReusableText(
                    title: "Email Verification",
                    size: 30,
                    weight: FontWeight.bold,
                    color: AppTheme.blackColor,
                  ),
                  const SizedBox(height: 40,),
                 const Text("We have sent you verification link in email, please click on that link to verify email",
                 style: TextStyle(fontSize: 16),
                 ),

                  Center(
                    child: AuthFooter(
                      onPressed: (){
                        FirebaseAuth.instance.currentUser!.sendEmailVerification();
                        Timer timer = Timer(const Duration(milliseconds: 3000), (){
                          Navigator.pop(context);

                        });
                        showDialog(
                            barrierDismissible: false,
                            context: context,
                            builder: (context){
                              return const AlertDialog(
                                icon: Icon(Icons.check_circle,color: Colors.green,size: 80,),
                                content: Text("Verification Email successfully",textAlign: TextAlign.center,),
                              );
                            }).then((value){
                          // dispose the timer in case something else has triggered the dismiss.
                          timer.cancel();
                          // timer = null;
                        });
                      },
                      title: "Not Received Email",
                      buttonText: "Click to Resend",
                    ),
                  ),
                  const SizedBox(height: 30,),
                  InkWell(
                      onTap:()async{
                        isEmailVerified=FirebaseAuth.instance.currentUser!.emailVerified;
                        if(isEmailVerified==true){
                          Timer timer = Timer(const Duration(milliseconds: 2000), (){
                            Navigator.pop(context);

                          });
                          showDialog(
                            barrierDismissible: false,
                              context: context,
                              builder: (context){
                                return const AlertDialog(
                                  icon: Icon(Icons.check_circle,color: Colors.green,size: 80,),
                                  content: Text("Email verified successfully",textAlign: TextAlign.center,),
                                );
                              }).then((value){
                            // dispose the timer in case something else has triggered the dismiss.
                            timer.cancel();
                            // timer = null;
                          });

                          Future.delayed(const Duration(milliseconds: 2300),(){
                            Get.to(const HomeScreen());
                          });
                        }else{
                          Timer timer = Timer(const Duration(milliseconds: 3000), (){
                            Navigator.pop(context);

                          });
                          showDialog(
                              barrierDismissible: false,
                              context: context,
                              builder: (context){
                                return const AlertDialog(
                                  icon: Icon(Icons.check_circle,color: Colors.green,size: 80,),
                                  content: Text("Email Not Verified Please Check Email or Restart App",textAlign: TextAlign.center,),
                                );
                              }).then((value){
                            // dispose the timer in case something else has triggered the dismiss.
                            timer.cancel();
                            // timer = null;
                          });
                        }
                      },
                      child: ReusableButton(
                        width: 130,
                        buttonTitle: "Verify Email",
                      )
                  ),
                  const SizedBox(height: 10,),
                  Center(
                    child: AuthFooter(
                      onPressed: ()=>Get.to(()=>const SignInScreen()),
                      title: "Login with other account",
                      buttonText: "Click to here",
                    ),
                  ),

                ],
              ),
            ),
          ),
        )
    );
  }
}


