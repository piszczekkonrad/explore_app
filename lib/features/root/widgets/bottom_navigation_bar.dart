import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    Key? key,
    required this.selectedIndex,
    required this.onItemTapped,
  }) : super(key: key);

  final int selectedIndex;
  final Function(int) onItemTapped;

  BottomNavigationBarItem _buildBottomNavItem(
      BuildContext context, String assetIcon, String label, int index) {
    final double iconHeight = MediaQuery.of(context).size.height * 0.03;
    final assetIconChecked =
        index == selectedIndex ? '${assetIcon}_active' : assetIcon;

    return BottomNavigationBarItem(
      icon: SizedBox(
        height: iconHeight,
        child: SvgPicture.asset(
          'assets/custom_icons/$assetIconChecked.svg',
        ),
      ),
      label: label,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: selectedIndex,
      backgroundColor: const Color.fromRGBO(228, 236, 237, 1),
      selectedItemColor: const Color.fromRGBO(77, 76, 76, 1),
      unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.normal),
      selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
      items: [
        _buildBottomNavItem(context, 'home', 'Śląskie', 0),
        _buildBottomNavItem(context, 'news', 'Aktualności', 1),
        _buildBottomNavItem(context, 'calendar', 'Wydarzenia', 2),
        _buildBottomNavItem(context, 'explore', 'Eksploruj', 3),
      ],
      onTap: onItemTapped,
    );
  }
}
