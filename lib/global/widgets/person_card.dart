import 'package:advo_clear_revamp_family/global/utils/app_colors.dart';
import 'package:advo_clear_revamp_family/global/utils/images.dart';
import 'package:advo_clear_revamp_family/global/utils/styles.dart';
import 'package:advo_clear_revamp_family/view/view_patient/view_patient_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersonCard extends StatelessWidget {
  final bool contactSide;
  const PersonCard({required this.contactSide, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Get.to(() => const ViewPatientView());
            // if (contactSide) {
            //   Get.to(() => const ContactsViewProfileView());
            // } else {
            //   Get.to(() => const ViewPatientView());
            // }
          },
          child: Container(
            height: 76,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: AppColors.whiteZeroFifteen)),
            child: Row(
              children: [
                const SizedBox(
                  width: 6,
                ),
                Image(
                  image: AssetImage(Images.patientPerson),
                  height: 64,
                  width: 67,
                ),
                const SizedBox(
                  width: 16,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("John Doe", style: Styles.eighteenW5WhiteText),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      "+92 123 456 789",
                      style: Styles.grey500Text,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        )
      ],
    );
  }
}
