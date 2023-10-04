import 'package:advo_clear_revamp_family/global/utils/app_colors.dart';
import 'package:flutter/material.dart';

class ContainerBtn extends StatelessWidget {
  const ContainerBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 56,
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.greenColor),
            borderRadius: BorderRadius.circular(8)),
        child: const Center(
          child: Text(
            "New to App",
            style: TextStyle(color: AppColors.greenColor, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
