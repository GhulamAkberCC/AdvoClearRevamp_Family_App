import 'package:advo_clear_revamp_family/global/widgets/description_text_form_field.dart';
import 'package:advo_clear_revamp_family/global/widgets/text_appbar.dart';
import 'package:advo_clear_revamp_family/global/widgets/title_text_form_field.dart';
import 'package:flutter/material.dart';

class AddNoteView extends StatelessWidget {
  const AddNoteView({super.key});

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
                    const TextAppBar(text: "Add Note"),
                    const SizedBox(
                      height: 24,
                    ),
                    const TitleTextFormField(hintText: "Title here"),
                    const DescriptionTextFormField(
                        hintText: "Start writing description from here..."),
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
        ),
      ),
    );
  }
}
