import 'package:explore_app/features/events/models/events_model.dart';
import 'package:injectable/injectable.dart';

@injectable
class EventsDataSource {
  List<String> getHorizontalScrollableImages() {
    return [
      'assets/images/Frame12.png',
      'assets/images/Frame.png',
    ];
  }

  List<EventsModel> getEventsList() {
    return [
      EventsModel(
        imgPath: 'assets/images/photo1.png',
        title: 'Gala muzyki filmowej',
        place: 'Spodek, Katowice',
        date: '3.09.2024 r.',
      ),
      EventsModel(
        imgPath: 'assets/images/photo2.png',
        title: 'Stanisław Bober fotografia',
        place: 'Miejski ośrodek kultury, Katowice',
        date: '23.09-12.10.2024 r.',
      ),
      EventsModel(
        imgPath: 'assets/images/photo3.png',
        title: 'Dziedzictwo kultury a proces inwestycyjny',
        place: 'Muzeum Śląskie, Katowice',
        date: '23.09-12.10.2024 r.',
      ),
      EventsModel(
        imgPath: 'assets/images/photo4.png',
        title: "Gala muzyki filmowej",
        place: 'Młodzieżowy Dom Kultury, Bielsko-Biała',
        date: '12.10.2024 r.',
      ),
      EventsModel(
        imgPath: 'assets/images/photo5.png',
        title: 'Gala muzyki filmowej',
        place: 'Młodzieżowy Dom Kultury, Bielsko-Biała',
        date: '12.10.2024 r.',
      ),
    ];
  }
}
