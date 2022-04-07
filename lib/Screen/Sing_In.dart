import 'package:app3/Screen/HomeScreen.dart';
import 'package:app3/Screen/Sing-Up.dart';
import 'package:app3/UI/Components//Logo_section.dart';
import 'package:app3/UI/Components/PasswordlFieldSection.dart';
import 'package:app3/UI/Components/Social_Section.dart';
import 'package:app3/UI/Components/Title_section.dart';
import 'package:flutter/material.dart';

import '../UI/Components/EmailField_section.dart';

class SingIn extends StatefulWidget {
  const SingIn({Key? key}) : super(key: key);

  @override
  State<SingIn> createState() => _SingInState();
}

class _SingInState extends State<SingIn> {
  final _globalKey = GlobalKey<FormState>();

  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerPassword = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Form(
            key: _globalKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                LogoSection(),
                SizedBox(
                  height: 30,
                ),
                TitleSection(
                  "Login to your Account",
                ),
                SizedBox(
                  height: 20,
                ),
                EmailFieldSection("Email", _controllerEmail),
                SizedBox(
                  height: 10,
                ),
                PasswordFieldSection("Password", _controllerPassword),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: double.maxFinite,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff1E319D),
                    ),
                    onPressed: () {
                      if (_globalKey.currentState!.validate()) {
                        // Navigator.pushReplacementNamed(context, "/Home-Screen");
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => HomeScreen()));
                      }

                      print(_controllerEmail.text);
                      print(_controllerPassword.text);
                    },
                    child: Text(
                      "Sing In",
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Text(
                  "- Or Sing In with -",
                  style: TextStyle(color: Color(0xffa5b1c2)),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SocialSection("assets/images/googleicon.png"),
                      SocialSection("assets/images/facebookicon.png"),
                      SocialSection("assets/images/twitter.png"),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) => SingUp()));
                    },
                    child: RichText(
                      text: TextSpan(
                          text: "Don\'t have an account?",
                          style: TextStyle(color: Color(0xffa5b1c2)),
                          children: [
                            TextSpan(
                                text: " Sing Up",
                                style: TextStyle(color: Color(0xff00a8ff)))
                          ]),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
