part of 'events_cubit.dart';

class EventsState {
  final List<String> horizontalScrollableImages;
  final List<EventsModel> eventsModels;
  final bool showSearchBar;
  final List<String> filtersList;
  EventsState( {
    required this.horizontalScrollableImages,
    required this.eventsModels,
    required this.showSearchBar,
    required this.filtersList,
  });
}
