import 'package:flutter/material.dart';

class FiltersExpansionTile extends StatefulWidget {
  const FiltersExpansionTile({
    super.key,
    required this.section,
    required this.tiles,
    required this.updateFilters,
  });

  final String section;
  final List<ListTile> tiles;
  final Function(bool, String) updateFilters;

  @override
  State<FiltersExpansionTile> createState() => _FiltersExpansionTileState();
}

class _FiltersExpansionTileState extends State<FiltersExpansionTile> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      enabled: widget.tiles.isNotEmpty,
        leading: widget.tiles.isNotEmpty
            ? const Icon(Icons.keyboard_arrow_down)
            : const Icon(null),
        trailing: Checkbox(
            value: _value,
            onChanged: (bool? newValue) {
              setState(() {
                _value = newValue!;
                widget.updateFilters(newValue, widget.section);
              });
            }),
        title: Text(
          widget.section,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14,
            color: Colors.black,
          ),
        ),
        children: widget.tiles);
  }
}
