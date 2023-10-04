import 'package:advo_clear_revamp_family/global/utils/app_colors.dart';
import 'package:advo_clear_revamp_family/global/utils/app_size.dart';
import 'package:advo_clear_revamp_family/global/utils/images.dart';
import 'package:advo_clear_revamp_family/global/widgets/app_text_form_field.dart';
import 'package:advo_clear_revamp_family/view/auth/forgot_password/forgot_password.dart';
import 'package:advo_clear_revamp_family/view/auth/sign_in/widgets/container_btn.dart';
import 'package:advo_clear_revamp_family/view/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SignInView extends StatelessWidget {
  SignInView({super.key});

  TextEditingController emailTEContr = TextEditingController();
  TextEditingController passwordTEContr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SizedBox(
        width: AppSize.width(context),
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50.0),
                      child: SvgPicture.asset(Images.signInLogo),
                    ),
                    Column(
                      children: [
                        AppTextField(
                            labelText: "EMAIL ADDRESS",
                            errorText: "Email Address",
                            teController: emailTEContr),
                        AppTextField(
                          labelText: "ENTER PASSWORD",
                          errorText: "Password",
                          teController: passwordTEContr,
                          obsecureText: true,
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: InkWell(
                            onTap: () {
                              Get.to(() => ForgetPasswordView());
                            },
                            child: const Text(
                              "Forgot Password",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              Get.off(() => HomeView());
                            },
                            child: const Text("Sign In")),
                        const SizedBox(
                          height: 30,
                        ),
                        const ContainerBtn(),
                        const SizedBox(
                          height: 24,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
