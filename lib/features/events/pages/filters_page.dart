import 'package:explore_app/features/events/widgets/simple_app_bar.dart';
import 'package:flutter/material.dart';
import '../widgets/calendar_buttons_row.dart';

class FiltersPage extends StatelessWidget {
  const FiltersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final dw = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: const SimpleAppBar(title: 'Filtruj'),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Sekcja 1
                FiltersExpansionTile(
                  section: 'Kultura',
                  tiles: [
                    // FiltersListTile(),

                    //Musisz to ogarnąć z poziomu events cubita, bo te filtry musza mieć state'a. Rozwiąże Ci to też prblem przekazania filtrów do events page'a



                    const ListTile(
                      title: Text('Wartość 2: WXYZ'),
                    ),
                    const ListTile(
                      title: Text('Wartość 3: 123'),
                    ),
                  ],
                ),
                // Sekcja 2
                const ExpansionTile(
                  title: Text(
                    'Sekcja 2',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  children: [
                    ListTile(
                      title: Text('Wartość 1: 67890'),
                    ),
                    ListTile(
                      title: Text('Wartość 2: WXYZ'),
                    ),
                    ListTile(
                      title: Text('Wartość 3: 123'),
                    ),
                  ],
                ),
                // Sekcja 3
                const ExpansionTile(
                  title: Text(
                    'Sekcja 3',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  children: [
                    ListTile(
                      title: Text('Wartość 1: ZZZ'),
                    ),
                    ListTile(
                      title: Text('Wartość 2: 98765'),
                    ),
                  ],
                ),
                const BlueButtonsRow(
                  leftText: 'Wyczyść',
                  rightText: 'Pokaż wyniki (24)',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FiltersListTile extends StatefulWidget  {
  const FiltersListTile({
    super.key,
  });

  @override
  State<FiltersListTile> createState() => _FiltersListTileState();
}

class _FiltersListTileState extends State<FiltersListTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text(
        'Sztuki wizualne',
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),

      ),

      leading: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Icon(null),
      ),
      trailing: Checkbox(value: true, onChanged: (val){}),
    );
  }
}

class FiltersExpansionTile extends StatefulWidget {
  const FiltersExpansionTile({
    super.key,
    required this.section,
    required this.tiles,
  });

  final String section;
  final List<ListTile> tiles;

  @override
  State<FiltersExpansionTile> createState() => _FiltersExpansionTileState();
}

class _FiltersExpansionTileState extends State<FiltersExpansionTile> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
        leading: const Icon(Icons.keyboard_arrow_down),
        trailing: Checkbox(
            value: _value,
            onChanged: (bool? newValue) {
              setState(() {
                _value = newValue!;
              });
            }),
        title: Text(
          widget.section,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14,
          ),
        ),
        children: widget.tiles);
  }
}
