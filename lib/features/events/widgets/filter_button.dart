import 'package:flutter/material.dart';

import '../cubit/events/events_cubit.dart';

class FilterButton extends StatelessWidget {
  const FilterButton({
    super.key,
    required this.filter, required this.updateFilters,
  });

  final String filter;
  final Function() updateFilters;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: ElevatedButton(
        onPressed: updateFilters,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromRGBO(0, 102, 177, 0.2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Row(
          children: [
            const Icon(
              Icons.close,
              color: Color.fromRGBO(60, 60, 59, 1),
            ),
            Text(
              filter,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 14,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
