import 'package:flutter/cupertino.dart';

class Header2 extends StatelessWidget {
  const Header2({
    super.key, required this.text, required this.dw,
  });
  final String text;
  final double dw;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w700,
        ),
        textAlign: TextAlign.left,
      ),
    );
  }
}


class CalendarSpacerLine extends StatelessWidget {
  const CalendarSpacerLine({
    super.key,
    required this.dw,
  });

  final double dw;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1,
      width: dw * .9,
      child: const DecoratedBox(
        decoration: BoxDecoration(
          color: Color.fromRGBO(77, 76, 76, 0.4),
        ),
      ),
    );
  }
}
