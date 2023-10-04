import 'package:advo_clear_revamp_family/global/utils/styles.dart';
import 'package:flutter/material.dart';

class DescriptionTextFormField extends StatelessWidget {
  final String hintText;
  const DescriptionTextFormField({required this.hintText, super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: 7,
      // controller: descriptionTEContr,
      style: Styles.sixteenW5Greey500Text,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: hintText,
        hintStyle: Styles.sixteenW5Greey500Text,
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return "Please enter description";
        }
        return null;
      },
    );
  }
}
