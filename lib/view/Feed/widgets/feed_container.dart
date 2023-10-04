import 'package:advo_clear_revamp_family/global/utils/app_colors.dart';
import 'package:flutter/material.dart';

class FeedContainer extends StatelessWidget {
  final Widget widget;
  const FeedContainer({required this.widget, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: AppColors.whiteZeroFifteen)),
        child: Padding(padding: const EdgeInsets.all(16.0), child: widget));
  }
}
