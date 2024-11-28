import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class CalendarContentItem extends StatelessWidget {
  const CalendarContentItem({
    super.key, required this.title, required this.value,
  });
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
      child: Row(
        children: [
          Text(title,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),),
          const Spacer(),
          Text(value,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color.fromRGBO(60, 60, 59, 0.5),
            ),),
          const SizedBox(width: 10),
          SvgPicture.asset('assets/custom_icons/arrows_vertical.svg',),
        ],
      ),
    );
  }
}

class ThinSpacerLine extends StatelessWidget {
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