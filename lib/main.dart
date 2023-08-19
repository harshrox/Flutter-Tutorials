import 'package:app_test_01/home_page.dart';
import 'package:app_test_01/login_page.dart';
import 'package:flutter/material.dart';


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
          primarySwatch: Colors.deepPurple
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/home",
      routes: {
        "/": (context)=> LoginPage(), //Object assignment
        "/home": (context)=>HomePage(),
        "/login": (context)=>LoginPage()
      }, // For multiple pages
    );
  }
}
