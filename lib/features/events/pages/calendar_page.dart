import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    final dw = MediaQuery.of(context).size.width;
          return Scaffold(
            body: SingleChildScrollView(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: isPortrait
                        ? CrossAxisAlignment.start
                        : CrossAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                        child: Text(
                          'Gala muzyki filmowej',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      SizedBox(height: 1, width: dw*.9,),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 8),
                        child: Text(
                          '''Hala widowiskowo-sportowa Spodek
al. Korfantego 35, Katowice''',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              'assets/custom_icons/bezplatne.svg',
                            ),
                            const Text(
                              'Wydarzenie bezpłatne',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SvgPicture.asset(
                              'assets/custom_icons/fb.svg',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SvgPicture.asset(
                              'assets/custom_icons/instagram.svg',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
  }
}
