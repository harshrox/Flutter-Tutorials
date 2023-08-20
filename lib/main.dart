import 'package:app_test_01/pages/home_page.dart';
import 'package:app_test_01/pages/login_page.dart';
import 'package:app_test_01/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),   //when "/" route is given , don't use home:HomePage()
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/login",
      routes: {
        "/": (context)=> LoginPage(), //Object assignment
        MyRoutes.homeRoute: (context)=> HomePage(),
        MyRoutes.loginRoute: (context)=> LoginPage()
      }, // For multiple pages
    );
  }
}
