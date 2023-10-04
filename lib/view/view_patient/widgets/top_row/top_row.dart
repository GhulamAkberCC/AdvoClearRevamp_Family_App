import 'package:advo_clear_revamp_family/global/utils/app_size.dart';
import 'package:advo_clear_revamp_family/global/utils/images.dart';
import 'package:advo_clear_revamp_family/global/utils/styles.dart';
import 'package:advo_clear_revamp_family/view/view_patient/widgets/top_row/widgets/log_btn.dart';
import 'package:advo_clear_revamp_family/view/view_patient/widgets/top_row/widgets/report_btn.dart';
import 'package:flutter/material.dart';

class ViewPatientTopRow extends StatelessWidget {
  const ViewPatientTopRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          // left: 24.0
          left: AppSize.width(context) * 0.06),
      child: SizedBox(
        // color: Colors.amber,
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image(image: AssetImage(Images.viewPatientPerson)),
                SizedBox(
                  // width: 16,
                  width: AppSize.width(context) * 0.03,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "John Doe",
                      style: Styles.twentyW5WhiteText,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Patient",
                      style: Styles.whiteText,
                    )
                  ],
                ),
              ],
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ReportBtn(),
                LogBtn(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
