import 'package:explore_app/features/events/events_page.dart';
import 'package:explore_app/features/explore/explore_page.dart';
import 'package:explore_app/features/home/home_page.dart';
import 'package:explore_app/features/news/news_page.dart';
import 'package:explore_app/features/root/widgets/app_bar.dart';
import 'package:explore_app/features/root/widgets/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key, required this.title});

  final String title;

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {


  int _selectedIndex = 0;
  String title = "Home";

  void _onItemTapped(int index) {

    if(index != _selectedIndex) {
      setState(() {
        _selectedIndex = index;
      });
      switch(_selectedIndex) {
        case 1:
          title = "Aktualności";
          break;
        case 2:
          title = "Wydarzenia";
          break;
        case 3:
          title = "Eksploruj";
          break;
        default:
          title = "Ekran Główny";
          break;
      }

    }
  }
  final _screens = const [
    HomePage(),
    NewsPage(),
    EventsPage(),
    ExplorePage(),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: title,),
      body: SingleChildScrollView(
          child: _screens[_selectedIndex]
      ),
      bottomNavigationBar: CustomBottomNavigationBar(selectedIndex: _selectedIndex, onItemTapped: _onItemTapped,),
    );
  }
}
