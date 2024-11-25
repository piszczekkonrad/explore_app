import 'package:explore_app/features/events/cubit/events_cubit.dart';
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
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}


