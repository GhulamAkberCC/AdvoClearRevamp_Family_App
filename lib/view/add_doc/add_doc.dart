import 'package:advo_clear_revamp_family/global/widgets/description_text_form_field.dart';
import 'package:advo_clear_revamp_family/global/widgets/text_appbar.dart';
import 'package:advo_clear_revamp_family/global/widgets/title_text_form_field.dart';
import 'package:advo_clear_revamp_family/view/add_doc/widgets/upload_doc_btn.dart';
import 'package:flutter/material.dart';

class AddDocsView extends StatelessWidget {
  const AddDocsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  const SizedBox(
                    height: 24,
                  ),
                  const TextAppBar(text: "Docs"),
                  const SizedBox(
                    height: 24,
                  ),
                  const TitleTextFormField(hintText: "Name here"),
                  const DescriptionTextFormField(
                      hintText: "Write a short desciption about the document"),
                  const UploadDocBtn(),
                  const SizedBox(
                    height: 24,
                  ),
                  Expanded(
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: ElevatedButton(
                            onPressed: () {}, child: const Text("Save"))),
                  ),
                  const SizedBox(
                    height: 24,
                  )
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
