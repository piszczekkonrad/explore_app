import 'package:explore_app/features/events/repositories/events_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../models/event_details_model.dart';

part 'event_details_state.dart';

@injectable
class EventDetailsCubit extends Cubit<EventDetailsState> {
  EventDetailsCubit(this._eventsRepository)
      : super(EventDetailsState(
          eventModel: EventDetailsModel(
            imgPath: '',
            title: '',
            place: '',
            date: '',
            featuresPreview: '',
            time: '',
            features: [],
            schedule: [],
          ),
        ));

  final EventsRepository _eventsRepository;

  void start() {
    final eventModel = _eventsRepository.getEventDetails();
    emit(
      EventDetailsState(
        eventModel: eventModel,
      ),
    );
  }
}
