



import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:homescreen/view/auth/models/user_model.dart';
import 'package:homescreen/view/home/ui/home_screen_navigation.dart';

import '../Firestore Constants/firestore_constants.dart';
import '../view/auth/ui/verification_Screen.dart';
import '../view/home/ui/home_screen.dart';

class AuthController extends GetxController{

  final FirebaseAuth _instance=  FirebaseAuth.instance;
  final FirebaseFirestore _firestoreInstance=FirebaseFirestore.instance;

  void createUser(UserModel  user)async{
    try{
      await _firestoreInstance.collection(FirestoreConstants.userCollection).doc(user.uid).set(user.toMap()).
      then((value) => {
      FirebaseAuth.instance.currentUser!.sendEmailVerification(),
      Get.showSnackbar(const GetSnackBar(message: "Account created successfully",duration: Duration(seconds: 2),)),
        Get.to(()=>const VerificationScreen())
      });
    }catch(e){
      Get.showSnackbar(GetSnackBar(message: "Error occurred : $e",duration: const Duration(seconds: 2)));
    }

  }

  void signUp(UserModel user)async{
    try{
      UserCredential authUser=await _instance.createUserWithEmailAndPassword(email: user.email, password: user.password);
      if(authUser.user!=null){
        user.uid=authUser.user!.uid;
        createUser(user);
      }
    }catch (e){
      Get.showSnackbar(GetSnackBar(message: "Error occurred : $e",duration: const Duration(seconds: 2)));
    }
  }

  signIn(UserModel user)async{
    try{
      UserCredential authUser=await _instance.signInWithEmailAndPassword(email: user.email, password: user.password);
      if(authUser.user!=null){
        if(authUser.user!.emailVerified==true){
          Get.to(()=>HomePage());
        }else{
          Get.to(()=>const VerificationScreen());
        }


        // user.uid=authUser.user!.uid;
        // createUser(user);
      }
    }catch (e){
      Get.showSnackbar(GetSnackBar(message: "Error occurred : $e",duration: const Duration(seconds: 2)));
    }
  }


  Future resetPassword({required String email}) async {
    bool _status=false;
    await _instance
        .sendPasswordResetEmail(email: email)
        .then((value) {
      Get.showSnackbar(const GetSnackBar(message: "Reset email sent successfully",duration: Duration(seconds: 2),));
    }).catchError((e){
      Get.showSnackbar(GetSnackBar(message: "Error occurred : $e",duration: const Duration(seconds: 2)));
    });
    return _status;
  }
  
}