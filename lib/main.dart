import 'dart:math';

import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'package:e_book_app/shared/theme.dart';
import 'package:e_book_app/widget/custom_form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Login Screen',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: LoginScreen());
  }
}

class LoginScreen extends StatelessWidget {
  final nameController = TextEditingController();
  String username = '';
  final formKey = GlobalKey<FormState>();

  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 30, bottom: 20),
                    child: Image.asset(
                      'images/mengbaca_logo.png',
                      width: 116,
                      height: 63,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(style: header1, children: [
                      const TextSpan(text: 'Welcome to '),
                      TextSpan(
                        text: 'Meng',
                        style: TextStyle(color: kCtaOrange),
                      ),
                      const TextSpan(text: 'Baca')
                    ]),
                  )
                ],
              ),
              Text(
                'Login now to read your favorite book!',
                textAlign: TextAlign.center,
                style: subText,
              ),
              const SizedBox(
                height: 40,
              ),
              Image.asset(
                'images/dizzy-reading.png',
                width: 250,
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Username'),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      validator: (String? value) {
                        if (value != null && value.isEmpty) {
                          return 'Please enter your username';
                        }
                        return null;
                      },
                      controller: nameController,
                      onChanged: (String value) {
                        username = value;
                      },
                      cursorColor: kPrimaryBlue,
                      decoration: InputDecoration(
                          hintText: 'Please enter your username...',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(defaultRadius),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(focusedRadius),
                            borderSide: BorderSide(color: kCtaOrange),
                          )),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Password'),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      obscureText: true,
                      validator: (String? value) {
                        if (value != null && value.isEmpty) {
                          return 'Please enter your username';
                        }
                        return null;
                      },
                      controller: nameController,
                      onChanged: (String value) {
                        username = value;
                      },
                      cursorColor: kPrimaryBlue,
                      decoration: InputDecoration(
                          hintText: 'You can random this, no logic yet...',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(defaultRadius),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(focusedRadius),
                            borderSide: BorderSide(color: kCtaOrange),
                          )),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30, top: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forget Password?',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          color: kPurple,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: 330,
                height: 50,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: kCtaOrange),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return HomeScreen(username: username);
                      }));
                    },
                    child: const Text('Login'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          const TextSpan(text: "Don't have an account? "),
                          TextSpan(
                            text: "Sign Up",
                            style: TextStyle(
                                color: kPurple, fontWeight: FontWeight.w500),
                          )
                        ],
                        style: TextStyle(color: kGreyColor),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 60,
              )
            ],
          ),
        ),
      ),
    );
  }
}
