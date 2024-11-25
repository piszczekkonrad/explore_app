class EventDetailsModel {
  final String imgPath;
  final String title;
  final String place;
  final String date;
  final String featuresPreview;
  final String time;
  final List<String> features;
  final List<String> schedule;

  EventDetailsModel({
    required this.imgPath,
    required this.title,
    required this.place,
    required this.date,
    required this.featuresPreview,
    required this.time,
    required this.features,
    required this.schedule,
  });
}
