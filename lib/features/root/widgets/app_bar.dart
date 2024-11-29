import 'package:explore_app/features/events/pages/filters_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    required this.canShowSearchBar,
  });
  final String title;
  final Function() canShowSearchBar;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            icon: SvgPicture.asset('assets/custom_icons/back_arrow.svg',
                colorFilter: const ColorFilter.mode(
                  Colors.blue,
                  BlendMode.srcIn,
                )),
            onPressed: () {},
          ),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 22,
            ),
          ),
          const Spacer(),
          IconButton(
            icon: SvgPicture.asset(
              'assets/custom_icons/search.svg',
              colorFilter:
                  const ColorFilter.mode(Colors.black, BlendMode.srcIn),
            ),
            onPressed: () {
              canShowSearchBar();
            },
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (_) =>const FiltersPage()));
            },
            icon: SvgPicture.asset(
              'assets/custom_icons/filter.svg',
            ),
          ),
        ],
      ),
    );
  }
}
