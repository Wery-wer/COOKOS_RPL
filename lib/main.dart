import 'package:flutter_dev/screen/edit_profile.dart';
import 'package:flutter_dev/screen/splash.dart';
import 'package:flutter_dev/screen/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dev/screen/registrasi.dart';
import 'package:get/get.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
   // This widget is the root of your application.
   @override
   Widget build(BuildContext context) {
     return MaterialApp(   // get material app
        debugShowCheckedModeBanner: false,
        title: 'COOKOS',
        theme: ThemeData(fontFamily: 'Poppins'),
        // initialRoute: LoginPage.routeName,
        routes:   {
          '/': (context) => const SplashScreenPage(),
          '/login': (context) => const LoginPage(),
          '/registrasi': (context) => const Registrasi(),
          '/edit_profile': (context) => const EditProfile(),
        }
        // getPages: [
        //   GetPage(name: LoginPage.routeName, page: () => const LoginPage()),
        //   GetPage(name: Registrasi.routeName, page: () => const Registrasi()),
        // ],
     ); 
   } 
 }