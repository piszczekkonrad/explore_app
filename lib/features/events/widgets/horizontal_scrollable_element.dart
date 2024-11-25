import 'package:flutter/cupertino.dart';

class HorizontalScrollableElement extends StatelessWidget {
  const HorizontalScrollableElement({
    super.key,
    required this.imgPath,
  });

  final String imgPath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 244,
        width: 300,
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image:
            DecorationImage(image: AssetImage(imgPath), fit: BoxFit.cover),

          ),
        ),
      ),
    );
  }
}
