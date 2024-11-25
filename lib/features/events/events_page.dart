import 'package:flutter/material.dart';

class EventsPage extends StatelessWidget{
  const EventsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child:
      Column(
        children: [
          SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: []


            // widget.courseCardModels
            //     .map(
            //       (courseCardModel) =>
            //       LessonScreenCourseCard(
            //         courseName: courseCardModel.name!,
            //         id: courseCardModel.id!,
            //         courseCardModels:
            //         widget.courseCardModels,
            //         image: courseCardModel.image!,
            //         favoriteModel: GetFavoriteModel(
            //           favoriteId: 0,
            //           tilesID: 0,
            //         ),
            //       ),
            // ).toList(),
          ),
        )
        ],
      ),

    );
  }
}