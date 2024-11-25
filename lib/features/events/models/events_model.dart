class EventsModel {
  final String impPath;
  final String title;
  final String description;
  final String date;
  EventsModel({
    required this.impPath,
    required this.title,
    required this.description,
    required this.date,
  });

  factory EventsModel.fromJson(Map<String, dynamic> json) {
    return EventsModel(
      impPath: json['img_path'],
      title: json['title'],
      description: json['description'],
      date: json['date'],
    );
  }
}
