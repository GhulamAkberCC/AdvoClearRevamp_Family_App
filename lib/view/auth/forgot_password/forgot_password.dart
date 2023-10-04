import 'package:advo_clear_revamp_family/global/utils/app_colors.dart';
import 'package:advo_clear_revamp_family/global/utils/images.dart';
import 'package:advo_clear_revamp_family/global/utils/styles.dart';
import 'package:advo_clear_revamp_family/global/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ForgetPasswordView extends StatelessWidget {
  ForgetPasswordView({super.key});

  TextEditingController emailTEContr = TextEditingController();

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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  Ink(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: SvgPicture.asset(
                          Images.backBtn,
                          width: 20,
                          height: 20,
                        )),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Text(
                    "Verify Email",
                    style: Styles.thirtyTwoW7WhiteText,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    "Enter code tha we've sent on you...",
                    style: Styles.grey500Text,
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  AppTextField(
                      labelText: "EMAIL ADDRESS",
                      errorText: "Email Address",
                      teController: emailTEContr),
                  const Spacer(),
                  ElevatedButton(
                      onPressed: () {}, child: const Text("Get Code")),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
