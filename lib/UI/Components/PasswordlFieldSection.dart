import 'package:flutter/material.dart';

Widget PasswordFieldSection(
  userHint,
  _control,
) {
  return Container(
    child: Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, bottom: 5),
        child: TextFormField(
          autofocus: false,
          obscureText: true,
          controller: _control,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: userHint,
            hintStyle: TextStyle(),
          ),
          validator: (val) {
            if (val!.isEmpty) {
              return "Password is required";
            } else {
              return null;
            }
          },
        ),
      ),
    ),
  );
}
