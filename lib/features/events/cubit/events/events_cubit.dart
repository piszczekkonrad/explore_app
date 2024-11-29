import 'package:explore_app/features/events/repositories/events_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../models/events_model.dart';
part 'events_state.dart';

@injectable
class EventsCubit extends Cubit<EventsState> {
  EventsCubit(this._eventsRepository)
      : super(EventsState(
          horizontalScrollableImages: [],
          eventsModels: [],
          showSearchBar: false,
          filtersList: [],
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
        filtersList: [],
      ),
    );
  }

  void canShowSearchBar() {
    if (state.showSearchBar) {
      emit(
        EventsState(
          horizontalScrollableImages: state.horizontalScrollableImages,
          eventsModels: state.eventsModels,
          showSearchBar: false,
          filtersList: state.filtersList,
        ),
      );
    } else {
      emit(
        EventsState(
          horizontalScrollableImages: state.horizontalScrollableImages,
          eventsModels: state.eventsModels,
          showSearchBar: true,
          filtersList: state.filtersList,
        ),
      );
    }
  }

  void updateFilters({required bool inList, required String filter}) {
    inList ? state.filtersList.add(filter) : state.filtersList.remove(filter);
    emit(EventsState(
      horizontalScrollableImages: state.horizontalScrollableImages,
      eventsModels: state.eventsModels,
      showSearchBar: state.showSearchBar,
      filtersList: state.filtersList,
    ));
  }
}
