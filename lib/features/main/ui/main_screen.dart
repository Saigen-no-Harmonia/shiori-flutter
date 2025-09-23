import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

import '../../../theme/app_colors.dart';
import '../../greeting/ui/greeting_screen.dart';
import '../../profile/ui/profile_screen.dart';
import '../../gallery/ui/gallery_screen.dart';
import '../../access/ui/access_screen.dart';
import '../../about/ui/about_screen.dart';

const List<Widget> _screens = [
  GreetingScreen(),
  ProfileScreen(),
  GalleryScreen(),
  AccessScreen(),
  AboutScreen(),
];

class MainScreen extends ConsumerStatefulWidget {
  const MainScreen({super.key});

  @override
  ConsumerState createState() => _MainScreenState();
}

class _MainScreenState extends ConsumerState<MainScreen> {
  late PersistentTabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  List<PersistentBottomNavBarItem> _navBarItems(
    BuildContext context,
    Color selectedColor,
    Color unselectedColor,
  ) {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.card_giftcard),
        title: 'ごあいさつ',
        activeColorPrimary: selectedColor,
        inactiveColorPrimary: unselectedColor,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.person),
        title: 'プロフィール',
        activeColorPrimary: selectedColor,
        inactiveColorPrimary: unselectedColor,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.photo_library),
        title: 'ギャラリー',
        activeColorPrimary: selectedColor,
        inactiveColorPrimary: unselectedColor,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.location_on),
        title: 'アクセス',
        activeColorPrimary: selectedColor,
        inactiveColorPrimary: unselectedColor,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.info),
        title: 'アプリについて',
        activeColorPrimary: selectedColor,
        inactiveColorPrimary: unselectedColor,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final selectedColor = AppColors.primary;
    final unselectedColor = AppColors.inactive;
    return Scaffold(
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: _screens,
        items: _navBarItems(context, selectedColor, unselectedColor),
        confineToSafeArea: true,
        backgroundColor: AppColors.white,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        hideNavigationBarWhenKeyboardAppears: true,
        decoration: const NavBarDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          colorBehindNavBar: AppColors.white,
        ),
        popBehaviorOnSelectedNavBarItemPress: PopBehavior.all,
        animationSettings: const NavBarAnimationSettings(
          navBarItemAnimation: ItemAnimationSettings(
            duration: Duration(milliseconds: 400),
          ),
          screenTransitionAnimation: ScreenTransitionAnimationSettings(
            animateTabTransition: false,
          ),
        ),
        navBarStyle: NavBarStyle.simple,
      ),
    );
  }
}