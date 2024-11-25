import 'package:explore_app/features/events/repositories/events_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'events_state.dart';

class EventsCubit extends Cubit<EventsState> {
  EventsCubit(this.eventsRepository)
      : super(EventsState(
    horizontalScrollableImages: [],
  ));

final EventsRepository eventsRepository;

}
