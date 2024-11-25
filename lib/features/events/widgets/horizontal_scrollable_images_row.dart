import 'package:flutter/cupertino.dart';

import 'horizontal_scrollable_element.dart';

class HorizontalScrollableImagesRow extends StatelessWidget {
  const HorizontalScrollableImagesRow({
    super.key,
    required this.horizontalScrollableImages,
  });
  final List<String> horizontalScrollableImages;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (final imgPath in horizontalScrollableImages) ...[
            HorizontalScrollableElement(
              imgPath: imgPath,
            ),
          ],
        ],
      ),
    );
  }
}