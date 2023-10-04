import 'package:advo_clear_revamp_family/controller/view_patient_controller.dart';
import 'package:advo_clear_revamp_family/global/utils/app_colors.dart';
import 'package:advo_clear_revamp_family/global/utils/images.dart';
import 'package:advo_clear_revamp_family/global/widgets/icon_btn.dart';
import 'package:advo_clear_revamp_family/view/view_patient/selected_tab.dart';
import 'package:advo_clear_revamp_family/view/view_patient/unselected_tab.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class TabsRow extends StatelessWidget {
  TabsRow({super.key});

  // DocsController docsController = Get.put(DocsController());
  ViewPatientController viewPatientController =
      Get.put(ViewPatientController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 67,
      color: AppColors.darkBlue,
      child: GetBuilder<ViewPatientController>(builder: (controller) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            for (int i = 0; i < controller.tabsList.length; i++) ...{
              i == 0
                  ? IconBtn(
                      iconPath: controller.selectedIndex == i
                          ? Images.selectedFeed
                          : Images.unSelectedFeed,
                      onPress: () {
                        controller.setSelectedIndex(i);
                        controller.pageController.animateToPage(i,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut);
                      })
                  : controller.selectedIndex == i
                      ? SelectedTab(
                          text: controller.tabsList[i],
                          onPress: () {
                            controller.setSelectedIndex(i);
                            controller.pageController.animateToPage(i,
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeInOut);
                          })
                      : UnSelectedTab(
                          text: controller.tabsList[i],
                          onTap: () {
                            controller.setSelectedIndex(i);
                            controller.pageController.animateToPage(i,
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeInOut);
                          },
                        )
            }
          ],
        );
      }),
    );
  }
}
