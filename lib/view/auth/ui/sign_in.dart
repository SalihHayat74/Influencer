

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
import 'forgot_password.dart';


class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  TextEditingController nameController=TextEditingController();
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  TextEditingController confirmPasswordController=TextEditingController();
  final _formkey = GlobalKey<FormState>();
  bool isLoading=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffECE9EF),
        body:SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(top:Get.height*.2,left:20,right: 20,bottom: 20),
              child: Form(
                key: _formkey,
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.center,
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: [
                    const ReusableText(
                      title: "Sign In",
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
                        }),
                    const SizedBox(height: 10,),
                    ReusableTextField(
                        "Password",
                        "Enter Password",
                        passwordController,
                            (name){
                          if( name!.isEmpty){
                            return "This field is required";
                          }
                          return null;
                        },
                    obscure: true,
                    ),
                    const SizedBox(height: 10,),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> const ForgotPasswordScreen()));
                          },
                          child: const Text("Forgot Password")),
                    ),

                    const SizedBox(height: 30,),
                    InkWell(
                        onTap:()async{
                          if(_formkey.currentState!.validate()){
                            setState(() {
                              isLoading=true;
                            });
                            UserModel  user=UserModel(
                                username: "",
                                email: emailController.text,
                                password: passwordController.text,
                                uid: "");
                            await AuthController().signIn(user);
                            setState(() {
                              isLoading=false;
                            });
                          }
                        },
                        child: isLoading?const SizedBox(width:15,height:15,child: CircularProgressIndicator()):ReusableButton(
                          buttonTitle: "SignIn",
                        )
                    ),
                    const SizedBox(height: 10,),
                    Center(
                      child: AuthFooter(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignUpScreen()));
                        },
                        title: "Not have account",
                        buttonText: "Signup here",
                      ),
                    )

                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}


