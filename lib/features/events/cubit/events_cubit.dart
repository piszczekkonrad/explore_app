import 'package:explore_app/features/events/models/events_model.dart';
import 'package:explore_app/features/events/repositories/events_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
part 'events_state.dart';

@injectable
class EventsCubit extends Cubit<EventsState> {
  EventsCubit(this._eventsRepository)
      : super(EventsState(
          horizontalScrollableImages: [],
          eventsModels: [],
          showSearchBar: false,
        ));

  final EventsRepository _eventsRepository;

  void start() {
    final horizontalScrollableImages =
        _eventsRepository.getHorizontalScrollableImages();
    final eventsList = _eventsRepository.getEventsList();
    emit(
      EventsState(
        horizontalScrollableImages: horizontalScrollableImages,
        eventsModels: eventsList,
        showSearchBar: false,
      ),
    );
  }

  void canShowSearchBar() {
    if(state.showSearchBar) {
      emit(
        EventsState(
          horizontalScrollableImages: state.horizontalScrollableImages,
          eventsModels: state.eventsModels,
          showSearchBar: false,
        ),
      );
    } else {
      emit(
        EventsState(
          horizontalScrollableImages: state.horizontalScrollableImages,
          eventsModels: state.eventsModels,
          showSearchBar: true,
        ),
      );
    }
  }
}
