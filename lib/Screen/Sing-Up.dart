import 'package:app3/UI/Components/Confirm_PasswordlField_Section.dart';
import 'package:app3/UI/Components/EmailField_section.dart';
import 'package:app3/UI/Components/Logo_section.dart';
import 'package:app3/UI/Components/PasswordlFieldSection.dart';
import 'package:app3/UI/Components/Social_Section.dart';
import 'package:app3/UI/Components/Title_section.dart';
import 'package:flutter/material.dart';

class SingUp extends StatefulWidget {
  const SingUp({Key? key}) : super(key: key);

  @override
  State<SingUp> createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  final _globalKey = GlobalKey<FormState>();

  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerPassword1 = TextEditingController();
  TextEditingController _controllerPassword2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  "Create to your Account",
                ),
                SizedBox(
                  height: 20,
                ),
                EmailFieldSection("Email", _controllerEmail),
                SizedBox(
                  height: 10,
                ),
                PasswordFieldSection("Password", _controllerPassword1),
                SizedBox(
                  height: 10,
                ),
                ConfirmPasswordFieldSection(
                    "Confirm password", _controllerPassword2),
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
                      if (_globalKey.currentState!.validate()) {}
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
              ],
            ),
          ),
        ),
      )),
    );
  }
}
