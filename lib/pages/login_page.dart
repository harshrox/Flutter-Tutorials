import 'package:app_test_01/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white, //Background color
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/undraw_login.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Welcome $name",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 32),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter username",
                      labelText: "Username",
                    ),
                    onChanged: (value){
                      name=value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter password",
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  InkWell(
                    onTap: () async {
                      setState(() {
                        changeButton = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      height: 50,
                      width: changeButton?50:150,
                      // color: Colors.deepPurple,
                      alignment: Alignment.center,
                      child: changeButton?Icon(
                        Icons.done,
                        color: Colors.white
                        ,)
                          :Text( // Ternary operator
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(changeButton?50:8),
                      ),
                    ),
                  ),
                  // ElevatedButton(
                  //   child: Text("Login"),
                  //   style: TextButton.styleFrom(minimumSize: Size(120, 40)),
                  //   onPressed: (){
                  //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //   },
                  // ),
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
