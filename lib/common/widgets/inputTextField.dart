// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String title;
  TextEditingController controller;
  Widget iconPrefix;
  Widget? iconSuffix;
  bool isObusure;
  TextInputType? keyBoardType;
  TextInputAction? inputAction;
  CustomTextField({
    Key? key,
    required this.title,
    required this.controller,
    required this.iconPrefix,
    this.iconSuffix,
    this.isObusure = true,
    this.keyBoardType,
    this.inputAction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //isObusure = true;
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        TextField(
          obscureText: isObusure,
          keyboardType: keyBoardType,
          textInputAction: inputAction,
          decoration: InputDecoration(
            prefixIcon: iconPrefix,
            suffixIcon: iconSuffix,
            labelText: title,
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
          ),
        )
      ],
    );
  }
}
