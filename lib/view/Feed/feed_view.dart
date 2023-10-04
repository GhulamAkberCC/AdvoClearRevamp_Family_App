import 'package:advo_clear_revamp_family/global/utils/app_colors.dart';
import 'package:advo_clear_revamp_family/global/utils/images.dart';
import 'package:advo_clear_revamp_family/global/utils/styles.dart';
import 'package:advo_clear_revamp_family/view/Feed/widgets/feed_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FeedView extends StatelessWidget {
  const FeedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(
                height: 24,
              ),
              const FeedContainer(
                widget: Row(
                  children: [
                    Text(
                      "Hassan",
                      style: Styles.sixteenWhiteText,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "log visited",
                      style: Styles.sixteenW5Greey500Text,
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "3:30 PM",
                          style: Styles.twelveGrey500Text,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const FeedContainer(
                  widget: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Nutrition's", style: Styles.sixteenWhiteText),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "07/02/2023 10:30AM",
                            style: Styles.twelveGrey500Text,
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Nutrition's", style: Styles.sixteenWhiteText),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "07/02/2023 10:30AM",
                        style: Styles.twelveGrey500Text,
                      )
                    ],
                  ),
                ],
              )),
              const SizedBox(
                height: 16,
              ),
              const Text(
                "Yesterday",
                style: Styles.twelveGrey500Text,
              ),
              const SizedBox(
                height: 16,
              ),
              FeedContainer(
                  widget: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(Images.pdf),
                  const SizedBox(
                    width: 6,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Name here", style: Styles.sixteenW5WhiteText),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        "01/09/2023 01:30 PM",
                        style: Styles.twelveGrey500Text,
                      )
                    ],
                  )
                ],
              )),
              const SizedBox(
                height: 16,
              ),
              const Text(
                "New contact Added on 29/08/2023",
                style: Styles.twelveGrey500Text,
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: AppColors.whiteZeroFifteen)),
                  child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Row(
                        children: [
                          Row(
                            children: [
                              Image(image: AssetImage(Images.patientPerson)),
                              const SizedBox(
                                width: 16,
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("John Doe",
                                      style: Styles.eighteenW5WhiteText),
                                  Text(
                                    "+92 123 456 789",
                                    style: Styles.grey500Text,
                                  )
                                ],
                              ),
                            ],
                          ),
                          const Expanded(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "05:40",
                                style: Styles.twelveGrey500Text,
                              ),
                            ),
                          )
                        ],
                      )))
            ],
          ),
        ),
      )),
    );
  }
}
