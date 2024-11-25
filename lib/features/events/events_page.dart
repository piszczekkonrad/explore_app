import 'package:explore_app/features/events/cubit/events_cubit.dart';
import 'package:explore_app/features/events/widgets/event_list_view_element.dart';
import 'package:explore_app/features/events/widgets/horizontal_scrollable_images_row.dart';
import 'package:explore_app/features/events/widgets/search_bar_text_field.dart';
import 'package:explore_app/features/root/widgets/app_bar.dart';
import 'package:explore_app/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    final dh = MediaQuery.of(context).size.height;
    final dw = MediaQuery.of(context).size.width;
    final searchController = TextEditingController();
    return BlocProvider<EventsCubit>(
      create: (_) => getIt()..start(),
      child: BlocBuilder<EventsCubit, EventsState>(builder: (context, state) {
        return Scaffold(
          appBar: CustomAppBar(
              title: 'Wydarzenia',
              canShowSearchBar: () {
                context.read<EventsCubit>().canShowSearchBar();
              }),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  state.showSearchBar
                      ? SearchBarTextField(
                          searchController: searchController,)
                      : const SizedBox(
                          height: 0,
                        ),
                  HorizontalScrollableImagesRow(
                    horizontalScrollableImages:
                        state.horizontalScrollableImages,
                  ),
                  for (final event in state.eventsModels) ...[
                    isPortrait
                        ? EventsListViewElement(
                            event: event,
                            dh: dh,
                          )
                        : EventsListViewElement(
                            event: event,
                            dh: dw,
                          )
                  ]
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}


