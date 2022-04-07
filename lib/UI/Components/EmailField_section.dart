import 'package:flutter/material.dart';

Widget EmailFieldSection(userHint, _control) {
  return Container(
    child: Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, bottom: 5),
        child: TextFormField(
          keyboardType: TextInputType.emailAddress,
          controller: _control,
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: userHint,
              hintStyle: TextStyle()),
          validator: (val) {
            if (val!.isEmpty) {
              return "Email is required";
            } else {
              return null;
            }
          },
        ),
      ),
    ),
  );
}
