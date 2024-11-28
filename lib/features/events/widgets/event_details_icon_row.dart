import 'package:explore_app/features/events/pages/calendar_page.dart';
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
          EventDetailsIconButton(
            dw: dw,
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const CalendarPage(),
                ),
              );
            },
            imgPath: 'assets/custom_icons/calendar_add.svg',
            description: 'Dodaj do kalendarza',
          ),
          EventDetailsIconButton(
            dw: dw,
            onPressed: () {},
            imgPath: 'assets/custom_icons/share.svg',
            description: 'Udostępnij',
          ),
          EventDetailsIconButton(
            dw: dw,
            onPressed: () {},
            imgPath: 'assets/custom_icons/navigate.svg',
            description: 'Pokaż na mapie',
          ),
          EventDetailsIconButton(
            dw: dw,
            onPressed: () {},
            imgPath: 'assets/custom_icons/www.svg',
            description: 'Strona www',
          ),
        ],
      ),
    );
  }
}

class EventDetailsIconButton extends StatelessWidget {
  const EventDetailsIconButton({
    super.key,
    required this.dw,
    required this.onPressed,
    required this.imgPath,
    required this.description,
  });

  final double dw;
  final Function() onPressed;
  final String imgPath;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          SizedBox(
            height: dw * .15,
            child: DecoratedBox(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(218, 231, 232, 1),
              ),
              child: IconButton(
                iconSize: dw * .1,
                onPressed: onPressed,
                icon: SvgPicture.asset(imgPath),
              ),
            ),
          ),
          Text(
            description,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w300,
              overflow: TextOverflow.clip,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
