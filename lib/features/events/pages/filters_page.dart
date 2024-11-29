import 'package:explore_app/features/events/widgets/simple_app_bar.dart';
import 'package:flutter/material.dart';
import '../widgets/calendar_buttons_row.dart';
import '../widgets/filters_expansion_tile.dart';
import '../widgets/filters_list_tile.dart';

class FiltersPage extends StatelessWidget {
  const FiltersPage({super.key, required this.updateFilters});
  final Function(bool, String) updateFilters;

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
                  updateFilters: updateFilters,
                  section: 'Kultura',
                  tiles: [
                    ThinSpacerLine(dw: dw),
                    FiltersListTile(filterName: 'Sztuki wizualne',updateFilters: updateFilters,),
                    ThinSpacerLine(dw: dw),
                    FiltersListTile(filterName: 'Muzyka',updateFilters: updateFilters,),
                    ThinSpacerLine(dw: dw),
                    FiltersListTile(filterName: 'Muzeum',updateFilters: updateFilters,),
                    ThinSpacerLine(dw: dw),
                    FiltersListTile(filterName: 'Teatr',updateFilters: updateFilters,),
                    ThinSpacerLine(dw: dw),
                    FiltersListTile(filterName: 'Kino',updateFilters: updateFilters,),
                  ],
                ),
                FiltersExpansionTile(
                  updateFilters: updateFilters,
                  section: 'Oświata',
                  tiles: const [],
                ),
                FiltersExpansionTile(
                  updateFilters: updateFilters,
                  section: 'Ochrona zdrowia',
                  tiles: const [],
                ),
                FiltersExpansionTile(
                  updateFilters: updateFilters,
                  section: 'Sport',
                  tiles: const [],
                ),
                FiltersExpansionTile(
                  updateFilters: updateFilters,
                  section: 'Turystyka',
                  tiles: const [],
                ),
                FiltersExpansionTile(
                  updateFilters: updateFilters,
                  section: 'Gospodarka',
                  tiles: const [],
                ),
                FiltersExpansionTile(
                  updateFilters: updateFilters,
                  section: 'Ekologia',
                  tiles: const [],
                ),
                FiltersExpansionTile(
                  updateFilters: updateFilters,
                  section: 'Fundusze Europejskie',
                  tiles: const [],
                ),
                // Sekcja 1
                FiltersExpansionTile(
                  updateFilters: updateFilters,
                  section: 'Rodzaj Wydarzenia',
                  tiles: [
                    ThinSpacerLine(dw: dw),
                    FiltersListTile(filterName: 'Warsztaty',updateFilters: updateFilters,),
                    ThinSpacerLine(dw: dw),
                    FiltersListTile(filterName: 'Targi',updateFilters: updateFilters,),
                    ThinSpacerLine(dw: dw),
                    FiltersListTile(filterName: 'Pikniki',updateFilters: updateFilters,),
                    ThinSpacerLine(dw: dw),
                    FiltersListTile(filterName: 'Kongresy',updateFilters: updateFilters,),
                    ThinSpacerLine(dw: dw),
                    FiltersListTile(filterName: 'Koncerty',updateFilters: updateFilters,),
                    ThinSpacerLine(dw: dw),
                    FiltersListTile(filterName: 'Spektakle',updateFilters: updateFilters,),
                    ThinSpacerLine(dw: dw),
                    FiltersListTile(filterName: 'Wystawy',updateFilters: updateFilters,),
                    ThinSpacerLine(dw: dw),
                    FiltersListTile(filterName: 'Koferencje',updateFilters: updateFilters,),
                    ThinSpacerLine(dw: dw),
                    FiltersListTile(filterName: 'Rajdy',updateFilters: updateFilters,),
                  ],
                ),
                // Sekcja 1
                FiltersExpansionTile(
                  updateFilters: updateFilters,
                  section: 'Według wieku',
                  tiles: [
                    ThinSpacerLine(dw: dw),
                    FiltersListTile(filterName: 'Dla dzieci',updateFilters: updateFilters,),
                    ThinSpacerLine(dw: dw),
                    FiltersListTile(filterName: 'Dla Seniora',updateFilters: updateFilters,),],
                ),
                // Sekcja 2

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

class ThinSpacerLine extends ListTile {
  const ThinSpacerLine({
    super.key,
    required this.dw,
  });

  final double dw;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: .5,
      width: dw * .9,
      child: const DecoratedBox(
        decoration: BoxDecoration(
          color: Color.fromRGBO(77, 76, 76, 0.4),
        ),
      ),
    );
  }
}





