

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:homescreen/GetX%20Controller/auth_controller.dart';
import 'package:homescreen/constants/reusable_text.dart';
import 'package:homescreen/themes/theme.dart';
import 'package:homescreen/view/auth/models/user_model.dart';
import 'package:homescreen/view/auth/ui/reusable_button.dart';
import 'package:homescreen/view/auth/ui/sign_up.dart';

import '../../../constants/reusable_text_field.dart';
import 'auth_footer.dart';


class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});



  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {


  TextEditingController emailController=TextEditingController();

  final _formkey = GlobalKey<FormState>();
  bool isLoading=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffECE9EF),
        body:SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(top:Get.height*.3,left:20,right: 20,bottom: 20),
              child: Form(
                key: _formkey,
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.center,
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: [
                    const ReusableText(
                      title: "Account Recovery",
                      size: 30,
                      weight: FontWeight.bold,
                      color: AppTheme.blackColor,
                    ),
                    const SizedBox(height: 40,),

                    ReusableTextField(
                        "Email",
                        "Enter Email",
                        emailController,
                            (name){
                          if( name!.isEmpty){
                            return "This field is required";
                          }
                          return null;
                        },

                      inputType: TextInputType.emailAddress,
                    ),


                    const SizedBox(height: 30,),
                    InkWell(
                        onTap:(){
                          if(_formkey.currentState!.validate()){
                            AuthController().resetPassword(email: emailController.text);
                          }
                        },
                        child: isLoading?const SizedBox(height:15,width:15,child: CircularProgressIndicator()):ReusableButton(
                          width: Get.width*.4,
                          buttonTitle: "Reset Password",
                        )
                    ),
                    // const SizedBox(height: 10,),
                    // Center(
                    //   child: AuthFooter(
                    //     onPressed: (){
                    //       Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignUpScreen()));
                    //     },
                    //     title: "Don't have account ",
                    //     buttonText: "SignUp here",
                    //   ),
                    // )

                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}


