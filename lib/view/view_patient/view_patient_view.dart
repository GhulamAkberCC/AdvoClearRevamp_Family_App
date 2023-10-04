import 'package:advo_clear_revamp_family/controller/view_patient_controller.dart';
import 'package:advo_clear_revamp_family/global/utils/app_colors.dart';
import 'package:advo_clear_revamp_family/global/utils/styles.dart';
import 'package:advo_clear_revamp_family/global/widgets/text_appbar.dart';
import 'package:advo_clear_revamp_family/view/Feed/feed_view.dart';
import 'package:advo_clear_revamp_family/view/docs/docs_view.dart';
import 'package:advo_clear_revamp_family/view/notes/notes.dart';
import 'package:advo_clear_revamp_family/view/view_patient/widgets/request_row.dart';
import 'package:advo_clear_revamp_family/view/view_patient/widgets/tabs_row.dart';
import 'package:advo_clear_revamp_family/view/view_patient/widgets/top_row/top_row.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ViewPatientView extends StatefulWidget {
  const ViewPatientView({super.key});

  @override
  State<ViewPatientView> createState() => _ViewPatientViewState();
}

class _ViewPatientViewState extends State<ViewPatientView> {
  ViewPatientController viewPatientController =
      Get.put(ViewPatientController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: TextAppBar(
              text: "View Patient",
              requirePopUpBtn: true,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const ViewPatientTopRow(),
          const SizedBox(
            height: 24,
          ),
          const RequestRow(),
          TabsRow(),
          Expanded(
            child: PageView(
              controller: viewPatientController.pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                FeedView(),
                NotesView(),
                DocsView(),
              ],
            ),
          )
        ],
      )),
    );
  }
}
