class EventsModel {
  final String imgPath;
  final String title;
  final String place;
  final String date;
  EventsModel({
    required this.imgPath,
    required this.title,
    required this.place,
    required this.date,
  });

  factory EventsModel.fromJson(Map<String, dynamic> json) {
    return EventsModel(
      imgPath: json['img_path'],
      title: json['title'],
      place: json['place'],
      date: json['date'],
    );
  }
}
