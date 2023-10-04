import 'package:advo_clear_revamp_family/global/utils/app_colors.dart';
import 'package:advo_clear_revamp_family/global/utils/styles.dart';
import 'package:flutter/material.dart';

class RequestRow extends StatelessWidget {
  const RequestRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 51,
        color: AppColors.greenColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text("Request updates from nurse",
                style: Styles.sixteenW5BlueText),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(95, 35),
                    backgroundColor: Colors.white),
                onPressed: () {},
                child: const Text(
                  "Request",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ))
          ],
        ));
  }
}
