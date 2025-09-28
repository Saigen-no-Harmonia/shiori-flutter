import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

import '../../../theme/app_colors.dart';
import '../../greeting/ui/greeting_screen.dart';
import '../../profile/ui/profile_screen.dart';
import '../../gallery/ui/gallery_screen.dart';
import '../../access/ui/access_screen.dart';
import '../../about/ui/about_screen.dart';

class MainScreen extends ConsumerStatefulWidget {
  const MainScreen({super.key});

  @override
  ConsumerState createState() => _MainScreenState();
}

class _MainScreenState extends ConsumerState<MainScreen> {
  int _currentIndex = 0;

  // 全ての画面を事前に作成して保持
  final List<Widget> _screens = const [
    GreetingScreen(),
    ProfileScreen(),
    GalleryScreen(),
    AccessScreen(),
    AboutScreen(),
  ];

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
        title: 'アプリ情報',
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
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: AppColors.white,
        ),
        child: SafeArea(
          child: Container(
            height: 60,
            child: Row(
              children: _navBarItems(context, selectedColor, unselectedColor)
                  .asMap()
                  .entries
                  .map((entry) {
                final index = entry.key;
                final item = entry.value;
                final isSelected = index == _currentIndex;
                
                return Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                    child: Container(
                      color: Colors.transparent,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            (item.icon as Icon).icon,
                            color: isSelected ? selectedColor : unselectedColor,
                            size: 24,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            item.title ?? '',
                            style: TextStyle(
                              color: isSelected ? selectedColor : unselectedColor,
                              fontSize: 12,
                              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
