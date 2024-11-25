import 'package:explore_app/features/events/repositories/events_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
part 'events_state.dart';

@injectable
class EventsCubit extends Cubit<EventsState> {
  EventsCubit(this._eventsRepository)
      : super(EventsState(
    horizontalScrollableImages: [],
  ));

final EventsRepository _eventsRepository;

 void start () async {
   final horizontalScrollableImages = _eventsRepository.getHorizontalScrollableImages();
   emit(EventsState(horizontalScrollableImages: horizontalScrollableImages));

 }

}
