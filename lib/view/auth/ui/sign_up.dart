

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homescreen/constants/reusable_text.dart';
import 'package:homescreen/themes/theme.dart';
import 'package:homescreen/view/auth/models/user_model.dart';
import 'package:homescreen/view/auth/ui/reusable_button.dart';
import 'package:homescreen/view/auth/ui/sign_in.dart';

import '../../../GetX Controller/auth_controller.dart';
import '../../../constants/reusable_text_field.dart';
import 'auth_footer.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {


  TextEditingController nameController=TextEditingController();
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  TextEditingController confirmPasswordController=TextEditingController();

  final _formkey = GlobalKey<FormState>();

  bool isVisiblePassword=false;

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
                    title: "Sign Up",
                    size: 30,
                    weight: FontWeight.bold,
                    color: AppTheme.blackColor,
                  ),
                  const SizedBox(height: 40,),
                  ReusableTextField(
                      "Name",
                      "Enter Name",
                      nameController,
                          (name){
                        if( name!.isEmpty){
                          return "This field is required";
                        }
                        return null;
                          },
                  inputType: TextInputType.name,
                  ),
                  const SizedBox(height: 10,),
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

                    obscure: isVisiblePassword,
                    suffixIcon: IconButton(
                      onPressed: (){
                        isVisiblePassword = !isVisiblePassword;
                        setState(() {

                        });
                      },
                      icon: isVisiblePassword?const Icon(Icons.visibility):const Icon(Icons.visibility_off),
                    ),

                  ),
                  const SizedBox(height: 10,),
                  ReusableTextField(
                      "Confirm Password",
                      "Confirm Password",
                      confirmPasswordController,
                          (name){
                        if( name!.isEmpty){
                          return "This field is required";
                        }else if(name != passwordController.text){
                          return "Password does not match";
                        }
                        return null;
                      },
                    obscure: isVisiblePassword,
                      ),


                  const SizedBox(height: 30,),
                  InkWell(
                    onTap:(){
                      if (_formkey.currentState!.validate()) {
                        setState(() {
                          isLoading=true;
                        });
                        UserModel user=UserModel(
                            username: nameController.text,
                            email: emailController.text,
                            password: passwordController.text,
                            uid: "");
                        AuthController().signUp(user);
                        setState(() {
                          isLoading=false;
                        });
                      }


                    },
                    child: isLoading?const SizedBox(width:15,height:15,child: CircularProgressIndicator()):ReusableButton(
                      buttonTitle: "Sign Up",
                    )
                  ),
                  // const SizedBox(height: 10,),
                  // Center(
                  //   child: AuthFooter(
                  //     onPressed: (){
                  //       Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignInScreen()));
                  //     },
                  //     title: "Already have account ",
                  //     buttonText: "SignIn here",
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


