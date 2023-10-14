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
     return GetMaterialApp(   // get material app
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(fontFamily: 'Poppins'),
        initialRoute: LoginPage.routeName,
        getPages: [
          GetPage(name: LoginPage.routeName, page: () => const LoginPage()),
          GetPage(name: Registrasi.routeName, page: () => const Registrasi()),
        ],
     ); 
   } 
 }