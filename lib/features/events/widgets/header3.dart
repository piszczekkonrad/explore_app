import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import 'header2.dart';

class Header3 extends StatelessWidget {
  const Header3({
    super.key,
    required this.dw, required this.value, required this.title,
  });
  final String title;

  final String value;

  final double dw;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 8, 20, 0),
      child: Row(
        children: [
          Header2(text: 'Powtarzaj', dw:dw),
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