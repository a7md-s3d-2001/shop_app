import 'package:flutter/material.dart';
import 'package:shop_app/screens/profile/profile_screen.dart';

import '../../constants.dart';
import '../custom_dialog_do_you_want.dart';
import 'home_drawer_card_item.dart';
import 'home_drawer_header.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Constants.primaryWhiteColor,
      elevation: 0.0,
      child: ListView(
        physics: BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(
          horizontal: 5.0,
        ),
        children: [
          HomeDrawerHeader(),
          HomeDrawerCardItem(
            onTap: () {},
            icon: Icons.local_offer_outlined,
            itemTitle: 'OFFERS',
          ),
          HomeDrawerCardItem(
            onTap: () {
              Constants.navigatorPush(
                context: context,
                screen: ProfileScreen(),
              );
            },
            icon: Icons.person_outline,
            itemTitle: 'PROFILE',
          ),
          HomeDrawerCardItem(
            onTap: () {},
            icon: Icons.settings_outlined,
            itemTitle: 'SETTINGS',
          ),
          HomeDrawerCardItem(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return CustomDialogDoYouWant(
                    title: 'Do You Want Log Out',
                    onTapYes: () {

                    },
                  );
                },
              );
            },
            icon: Icons.logout,
            itemTitle: 'LOG OUT',
          ),
        ],
      ),
    );
  }
}
