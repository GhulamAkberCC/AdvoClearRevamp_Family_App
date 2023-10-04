import 'package:advo_clear_revamp_family/global/utils/app_colors.dart';
import 'package:advo_clear_revamp_family/global/utils/styles.dart';
import 'package:flutter/material.dart';

class TitleTextFormField extends StatelessWidget {
  final String hintText;
  const TitleTextFormField({required this.hintText, super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: Styles.twentyW5Grey600Text,
      decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: Styles.twentyW5Grey600Text),
      validator: (value) {
        if (value!.isEmpty) {
          return "Please enter Title";
        }
        return null;
      },
    );
  }
}
