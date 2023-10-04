// ignore_for_file: must_be_immutable

import 'package:advo_clear_revamp_family/global/utils/app_colors.dart';
import 'package:advo_clear_revamp_family/global/utils/styles.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  String labelText;
  String errorText;
  TextEditingController teController;
  bool? obsecureText;
  bool phoneKeyboard;
  bool emailKeyboard;
  bool editEmail;
  bool maxLength;
  bool isBlackText;

  AppTextField(
      {required this.labelText,
      required this.errorText,
      required this.teController,
      this.obsecureText = false,
      this.phoneKeyboard = false,
      this.emailKeyboard = false,
      this.editEmail = true,
      this.maxLength = false,
      this.isBlackText = false,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          style: Styles.sixteenWhiteText,
          controller: teController,
          obscureText: obsecureText!,
          obscuringCharacter: "*",
          autovalidateMode: AutovalidateMode.onUserInteraction,
          keyboardType: phoneKeyboard
              ? TextInputType.phone
              : emailKeyboard
                  ? TextInputType.emailAddress
                  : TextInputType.text,
          maxLength: maxLength ? 300 : null,
          decoration: InputDecoration(
              labelText: labelText,
              labelStyle: Styles.sixteenWhiteText,
              enabled: editEmail ? true : false,
              enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColors.grey600)),
              focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColors.grey600))),
          validator: (value) {
            if (value!.isEmpty) {
              return "Please Enter $errorText";
            } else if (emailKeyboard == true) {
              // if (!EmailValidator.validate(value.trim())) {
              //   return "Please enter valid Email";
              // }
            } else if (obsecureText == true) {
              if (value.length < 6) {
                return "Password length should be at least 6";
              }
            }
            return null;
          },
        ),
        const SizedBox(
          height: 24,
        )
      ],
    );
  }
}
