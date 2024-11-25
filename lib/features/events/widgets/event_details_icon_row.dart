import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EventDetailsIconRow extends StatelessWidget {
  const EventDetailsIconRow({
    super.key,
    required this.dw,
  });

  final double dw;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Column(
              children: [
                SizedBox(
                  height: dw * .15,
                  child: DecoratedBox(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(239, 239, 239, 1),
                    ),
                    child: IconButton(
                      iconSize: dw * .1,
                      onPressed: () {},
                      icon: SvgPicture.asset(
                          'assets/custom_icons/calendar_add.svg'),
                    ),
                  ),
                ),
                const Text(
                  'Dodaj do kalendarza',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    overflow: TextOverflow.clip,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                SizedBox(
                  height: dw * .15,
                  child: DecoratedBox(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(239, 239, 239, 1),
                    ),
                    child: IconButton(
                      iconSize: dw * .1,
                      onPressed: () {},
                      icon: SvgPicture.asset(
                          'assets/custom_icons/share.svg'),
                    ),
                  ),
                ),
                const Text(
                  'Udostępnij',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    overflow: TextOverflow.clip,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                SizedBox(
                  height: dw * .15,
                  child: DecoratedBox(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(239, 239, 239, 1),
                    ),
                    child: IconButton(
                      iconSize: dw * .1,
                      onPressed: () {},
                      icon: SvgPicture.asset(
                          'assets/custom_icons/navigate.svg'),
                    ),
                  ),
                ),
                const Text(
                  'Pokaż na mapie',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    overflow: TextOverflow.clip,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                SizedBox(
                  height: dw * .15,
                  child: DecoratedBox(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(239, 239, 239, 1),
                    ),
                    child: IconButton(
                      iconSize: dw * .1,
                      onPressed: () {},
                      icon: SvgPicture.asset(
                          'assets/custom_icons/www.svg'),
                    ),
                  ),
                ),
                const Text(
                  'Strona www',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    overflow: TextOverflow.clip,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
