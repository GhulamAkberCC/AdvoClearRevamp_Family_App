import 'package:advo_clear_revamp_family/global/utils/app_colors.dart';
import 'package:advo_clear_revamp_family/global/utils/styles.dart';
import 'package:advo_clear_revamp_family/global/widgets/float_act_btn.dart';
import 'package:advo_clear_revamp_family/view/add_note/add_note.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatActBtn(onPress: () {
        Get.to(() => const AddNoteView());
      }),
      body: ListView.builder(
          itemCount: 10,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                // Get.to(() => const ViewPublicNotesView());
              },
              child: const Padding(
                padding: EdgeInsets.only(top: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Nutrition's",
                            style: Styles.sixteenWhiteText,
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "07/02/2023 10:30AM",
                            style: Styles.twelveGrey500Text,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Divider(
                      height: 0,
                      color: AppColors.grey600,
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
