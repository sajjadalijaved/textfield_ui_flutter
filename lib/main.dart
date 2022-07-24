import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:textfield_ui/button.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
    title: 'Flutter Ui',
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                  height: 300,
                  decoration: const BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(110)))),
              const Positioned(
                  top: 60,
                  left: 450,
                  child: Icon(Icons.supervised_user_circle,
                      size: 200, color: Colors.white)),
              const Positioned(
                  bottom: 2,
                  left: 920,
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ))
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 12),
            child: const SizedBox(
                width: 400,
                child: TextField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 3,
                              color: Colors.black,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      labelText: 'User Name',
                      hintText: 'Enter User Name',
                      prefixIcon: Icon(
                        Icons.account_circle,
                        size: 30,
                        color: Colors.black54,
                      ),
                      labelStyle: TextStyle(fontStyle: FontStyle.italic),
                      floatingLabelStyle: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 20,
                          fontStyle: FontStyle.italic),
                      hoverColor: Colors.deepOrange,
                      filled: true,
                      hintStyle: TextStyle(
                        fontStyle: FontStyle.italic,
                      )),
                )),
          ),
          Container(
            margin: const EdgeInsets.only(top: 12),
            child: const SizedBox(
                width: 400,
                child: TextField(
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 5,
                              color: Colors.black,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      labelText: 'User Password',
                      hintText: 'Enter User Password',
                      prefixIcon: Icon(Icons.vpn_key_rounded),
                      suffixIcon: Icon(
                        Icons.remove_red_eye_rounded,
                        size: 30,
                        color: Colors.black54,
                      ),
                      labelStyle: TextStyle(fontStyle: FontStyle.italic),
                      hintMaxLines: 5,
                      floatingLabelStyle: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 20,
                          fontStyle: FontStyle.italic),
                      hoverColor: Colors.deepOrange,
                      filled: true,
                      hintStyle: TextStyle(
                        fontStyle: FontStyle.italic,
                      )),
                )),
          ),
          Container(
            margin: const EdgeInsets.only(top: 12),
            child: const SizedBox(
                width: 400,
                child: TextField(
                  maxLength: 40,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 5,
                              color: Colors.black,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      labelText: 'User Email',
                      floatingLabelStyle: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 20,
                          fontStyle: FontStyle.italic),
                      hoverColor: Colors.deepOrange,
                      filled: true,
                      hintText: 'Enter User Email',
                      prefixIcon: Icon(
                        Icons.email_rounded,
                        size: 30,
                        color: Colors.black54,
                      ),
                      labelStyle: TextStyle(fontStyle: FontStyle.italic),
                      hintMaxLines: 5,
                      hintStyle: TextStyle(
                        fontStyle: FontStyle.italic,
                      )),
                )),
          ),
          Container(
              width: 400,
              margin: const EdgeInsets.only(top: 5),
              alignment: Alignment.bottomRight,
              child: const Text(
                'forgot password?',
                style: TextStyle(color: Colors.red, fontSize: 15),
              )),
          Container(
            margin: const EdgeInsets.only(top: 45),
            child: SizedBox(
              height: 50,
              width: 400,
              child: MyButton(
                  child: const Center(
                    child: Text(
                      'LOGIN',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                      // textAlign: TextAlign.center,
                    ),
                  ),
                  onPressed: () {}),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Don`t have an account?',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'Register',
                style: TextStyle(color: Colors.yellow, fontSize: 25),
              )
            ],
          )
        ],
      ),
    );
  }
}
