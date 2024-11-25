import 'package:explore_app/features/events/cubit/events_cubit.dart';
import 'package:explore_app/features/events/widgets/event_list_view_element.dart';
import 'package:explore_app/features/events/widgets/horizontal_scrollable_images_row.dart';
import 'package:explore_app/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final dh = MediaQuery.of(context).size.height;
    return BlocProvider<EventsCubit>(
      create: (_) => getIt()..start(),
      child: BlocBuilder<EventsCubit, EventsState>(builder: (context, state) {
        return Center(
          child: Column(
            children: [
              HorizontalScrollableImagesRow(
                horizontalScrollableImages: state.horizontalScrollableImages,
              ),
              for (final event in state.eventsModels) ...[
                EventsListViewElement(
                  event: event,
                  dh: dh,
                )
              ]
            ],
          ),
        );
      }),
    );
  }
}


