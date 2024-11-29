import 'package:flutter/material.dart';

class FiltersListTile extends ListTile {
  const FiltersListTile({
    super.key, required this.filterName, required this.updateFilters,
  });


  final String filterName;
  final Function(bool, String) updateFilters;


  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        filterName,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      ),
      leading: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Icon(null),
      ),
      trailing: ListTileCheckBox(updateFilters: updateFilters, filterName: filterName,),
    );
  }
}
class ListTileCheckBox extends StatefulWidget {
  const ListTileCheckBox({
    super.key, required this.updateFilters, required this.filterName,
  });
  final Function(bool, String) updateFilters;
  final String filterName;

  @override
  State<ListTileCheckBox> createState() => _ListTileCheckBoxState();
}

class _ListTileCheckBoxState extends State<ListTileCheckBox> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
        checkColor: const Color.fromRGBO(0, 102, 177, 1),
        activeColor: const Color.fromRGBO(0, 102, 177, 1),
        value: _value,
        onChanged: (bool? newValue) {
          setState(() {
            _value = newValue!;
            widget.updateFilters(newValue, widget.filterName);
          });
        });
  }
}
