import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/bottom_navigation_bar_povider.dart';
import 'package:shop_app/widgets/drawer/home_drawer.dart';

import '../../constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List title = [
      'SHOP APP HOME',
      'OFFERS',
      'SETTINGS',
      'PROFILE',
    ];
    return Scaffold(
      backgroundColor: Constants.primaryWhiteColor,
      drawer: HomeDrawer(),
      appBar: AppBar(
        title: Text(
         title[ Provider.of<BottomNavigationBarProvider>(context, listen: true).currentIndex],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Provider.of<BottomNavigationBarProvider>(
                context,
                listen: true,
              ).currentIndex == 0 ? Icons.home : Icons.home_outlined,
            ),
            label: 'HOME',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Provider.of<BottomNavigationBarProvider>(
                context,
                listen: true,
              ).currentIndex == 1 ? Icons.local_offer_sharp : Icons.local_offer_outlined,
            ),
            label: 'OFFERS',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Provider.of<BottomNavigationBarProvider>(
                context,
                listen: true,
              ).currentIndex == 2 ? Icons.settings : Icons.settings_outlined,
            ),
            label: 'SETTINGS',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Provider.of<BottomNavigationBarProvider>(
                context,
                listen: true,
              ).currentIndex == 3 ? Icons.person : Icons.person_outlined,
            ),
            label: 'PROFILE',
          ),
        ],
        elevation: 0.0,
        currentIndex: Provider.of<BottomNavigationBarProvider>(
          context,
          listen: true,
        ).currentIndex,
        // iconSize: 30,
        onTap: (index) {
          Provider.of<BottomNavigationBarProvider>(
            context,
            listen: false,
          ).increaseCurrentIndex(index);
        },
        selectedItemColor: Constants.primaryPurpleColor,
        unselectedItemColor: Colors.grey[600],
        type: BottomNavigationBarType.fixed,
        backgroundColor: Constants.primaryWhiteColor,
        selectedFontSize: 13.0,
        unselectedFontSize: 12.0,
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
