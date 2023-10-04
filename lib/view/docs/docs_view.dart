import 'package:advo_clear_revamp_family/global/utils/app_colors.dart';
import 'package:advo_clear_revamp_family/global/utils/images.dart';
import 'package:advo_clear_revamp_family/global/utils/styles.dart';
import 'package:advo_clear_revamp_family/global/widgets/float_act_btn.dart';
import 'package:advo_clear_revamp_family/view/add_doc/add_doc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class DocsView extends StatelessWidget {
  const DocsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatActBtn(onPress: () {
        Get.to(() => const AddDocsView());
      }),
      body: ListView.builder(
          itemCount: 10,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                // Get.to(() => const ViewPublicDocsView());
              },
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset(Images.pdf),
                        const SizedBox(
                          width: 6,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Hassan Ali",
                                    style: Styles.sixteenWhiteText,
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    "07/02/2023 10:30AM",
                                    style: Styles.twelveGrey500Text,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const Divider(
                    height: 0,
                    color: AppColors.grey600,
                  ),
                ],
              ),
            );
          }),
    );
  }
}
