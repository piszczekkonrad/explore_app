import 'package:explore_app/features/events/data/events_data_source.dart';
import 'package:injectable/injectable.dart';

@injectable
class EventsRepository{

  final _eventsDataSource = EventsDataSource();

  List<String> getHorizontalScrollableImages () {
    return _eventsDataSource.getHorizontalScrollableImages();
  }

}