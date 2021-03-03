import 'package:flutter/material.dart';
import 'package:flutter_land/screens/add_post_page.dart';
import 'package:flutter_land/screens/my_profile_page.dart';
import 'package:flutter_land/screens/search_page.dart';
import 'package:flutter_land/screens/settings_page.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'home_page.dart';

class SkelPage extends StatefulWidget {
  @override
  _SkelPageState createState() => _SkelPageState();
}

class _SkelPageState extends State<SkelPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PersistentTabView(
        context,
        // controller: _controller,
        screens: [
          HomePage(),
          SearchPage(),
          AddPostPage(),
          MyProfilePage(),
          SettingsPage(),
        ],
        items: [
          PersistentBottomNavBarItem(
            icon: Icon(LineAwesomeIcons.home),
            activeColor: Colors.grey[900],
            inactiveColor: Colors.grey[400],
          ),
          PersistentBottomNavBarItem(
            icon: Icon(Icons.search),
            activeColor: Colors.grey[900],
            inactiveColor: Colors.grey[400],
          ),
          PersistentBottomNavBarItem(
            icon: Icon(
              LineAwesomeIcons.plus,
              color: Colors.grey[100],
            ),
            activeColor: Colors.grey[900],
            inactiveColor: Colors.grey[400],
          ),
          PersistentBottomNavBarItem(
            icon: Icon(LineAwesomeIcons.user_1),
            activeColor: Colors.grey[900],
            inactiveColor: Colors.grey[400],
          ),
          PersistentBottomNavBarItem(
            icon: Icon(LineAwesomeIcons.cog),
            activeColor: Colors.grey[900],
            inactiveColor: Colors.grey[400],
          ),
        ],
        confineInSafeArea: true,

        backgroundColor: Colors.white,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset:
            true, // This needs to be true if you want to move up the screen when keyboard appears.
        stateManagement: true,
        hideNavigationBarWhenKeyboardShows:
            true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument.
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(10.0),
          colorBehindNavBar: Colors.white,
        ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: ItemAnimationProperties(
          // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimation(
          // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle:
            NavBarStyle.style15, // Choose the nav bar style with this property.
      ),
    );
  }
}
