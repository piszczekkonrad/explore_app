import 'package:explore_app/features/events/models/event_details_model.dart';
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

  EventDetailsModel getEventDetails() {
    return EventDetailsModel(
      imgPath: 'assets/images/details.png',
      title: 'Gala muzyki filmowej',
      place: '''Hala widowiskowo-sportowa Spodek
al. Korfantego 35, Katowice''',
      date: '03.09.24 r.',
      featuresPreview: 'Cerekwicka | Ziółko | Talarczyk | Sztor | Chór',
      time: 'g. 18.00',
      features: [
        'Katarzyna Cerekwicka',
        'Mateusz Ziółko',
        'Robert Talarczyk – prowadzenie',
        'Maciej Sztor – dyrygent',
        'Jarosław Wolanin – przygotowanie Chóru',
        'Mateusz Kokot – animacje',
        'Katarzyna Kroczek-Wasińska – animacje',
        'Wojciech Kukuczka – animacje',
        'Witold Suchoń – animacje',
        'Tomasz Olszewski – wizualizacje',
        'Orkiestra Symfoniczna Filharmonii Śląskiej',
        'Chór Filharmonii Śląskiej',
      ],
      schedule: [
        'John Williams – Star Wars',
        'John Williams – Szczęki',
        'John Williams – Harry Potter',
        'James Horner – Titanic',
        'Hans Zimmer – Batman vs Superman',
        'Hans Zimmer – Incepcja',
        'Hans Zimmer – Piraci z Karaibów',
        'Harry Gregson-Williams – Opowieści z Narni',
        'John Powell – Jak Wytresować Smoka',
        'David Arnold – James Bond',
        'Ryszard Strauss – Odyseja Kosmiczna',
        'James Newton Howard – Igrzyska Śmierci',
        'Angelo Badalamenti – Twin Peaks',
      ],
    );
  }
}
