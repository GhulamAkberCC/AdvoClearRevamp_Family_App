import 'package:advo_clear_revamp_family/global/widgets/drawer_appBar.dart';
import 'package:advo_clear_revamp_family/global/widgets/person_card.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      // drawer: AppDrawer(scaffoldKey: scaffoldKey),
      body: SafeArea(
          child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          DrawerAppBar(
              onPress1: () {
                scaffoldKey.currentState!.openDrawer();
              },
              onPress2: () {}),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: ListView.builder(
                  itemCount: 10,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return const PersonCard(contactSide: false);
                  }),
            ),
          ),
        ],
      )),
    );
  }
}
