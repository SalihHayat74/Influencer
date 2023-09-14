import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:homescreen/view/auth/ui/sign_in.dart';
import 'package:homescreen/view/auth/ui/sign_up.dart';
import 'package:homescreen/view/auth/ui/verification_Screen.dart';
import 'package:homescreen/view/home/ui/home_screen.dart';
import 'package:homescreen/view/home/ui/home_screen_navigation.dart';
import 'package:homescreen/view/splash/splash_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5),(){
      splashTimeCompleted=true;
      setState(() {

      });
    });
    // TODO: implement initState
    super.initState();
  }
  bool splashTimeCompleted=false;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        checkboxTheme: const CheckboxThemeData(
          visualDensity:
              VisualDensity.standard, // Set visualDensity to standard
        ),
      ),
      home: splashTimeCompleted?StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context,snapshot){

          if(snapshot.hasData){
            if(FirebaseAuth.instance.currentUser!.emailVerified==true) {
              return HomePage();
            }else{
              return const VerificationScreen();
            }
          }else{
              return SignInScreen();
          }


        },
      ):
      SplashScreen(),

      // HomePage(),
    );
  }
}
