import 'package:explore_app/features/events/widgets/header2.dart';
import 'package:explore_app/features/events/widgets/simple_app_bar.dart';
import 'package:flutter/material.dart';
import '../widgets/calendar_buttons_row.dart';
import '../widgets/calendar_content_item.dart';
import '../widgets/custom_switch.dart';
import '../widgets/header1.dart';
import '../widgets/header3.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    final dw = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: const SimpleAppBar(title: 'Kalendarz imprez'),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                  crossAxisAlignment:  CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 8, 0, 8),
                  child: Header1(text: 'Gala muzyki filmowej'),
                ),
                CalendarSpacerLine(dw: dw),
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 8, 0, 8),
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
                  padding: const EdgeInsets.fromLTRB(20, 8, 20, 0),
                  child: Row(
                    children: [
                      Header2(text: 'Wydarzenie Całodniowe', dw: dw),
                      const Spacer(),
                      const CustomSwitch()
                    ],
                  ),
                ),
                CalendarSpacerLine(dw: dw),
                const CalendarContentItem(
                  title: 'Początek',
                  value: '18.11.24r.',
                ),
                ThinSpacerLine(dw: dw),
                const CalendarContentItem(
                  title: 'Koniec',
                  value: '19.11.24r.',
                ),
                ThinSpacerLine(dw: dw),
                Header3(
                  title: 'Powtarzaj',
                  dw: dw,
                  value: 'Nigdy',
                ),
                CalendarSpacerLine(dw: dw),
                Header3(
                  title: 'Kalendarz',
                  dw: dw,
                  value: 'Dom',
                ),
                CalendarSpacerLine(dw: dw),
                const CalendarContentItem(
                  title: 'Zaproszeni',
                  value: 'Brak',
                ),
                ThinSpacerLine(dw: dw),
                Header3(
                  title: 'Alert',
                  dw: dw,
                  value: 'W dniu wydarzenia',
                ),
                CalendarSpacerLine(dw: dw),
                const CalendarContentItem(
                  title: '2. alert',
                  value: 'Brak',
                ),
                ThinSpacerLine(dw: dw),
                const BlueButtonsRow(leftText: 'Anuluj',rightText: 'Dodaj',)
              ],
            ),
          ),
        ),
      ),
    );
  }
}


