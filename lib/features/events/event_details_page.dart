import 'package:explore_app/features/events/widgets/event_details_icon_row.dart';
import 'package:explore_app/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'cubit/event_details/event_details_cubit.dart';

class EventDetailsPage extends StatelessWidget {
  const EventDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    final dh = MediaQuery.of(context).size.height;
    final dw = MediaQuery.of(context).size.width;
    final searchController = TextEditingController();
    return BlocProvider<EventDetailsCubit>(
      create: (_) => getIt()..start(),
      child: BlocBuilder<EventDetailsCubit, EventDetailsState>(
          builder: (context, state) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: SvgPicture.asset(
                        'assets/custom_icons/back_arrow.svg',
                      ),
                    ),
                    Text(
                      state.eventModel.title,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      state.eventModel.featuresPreview,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      '${state.eventModel.date} | ${state.eventModel.time}',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: Color.fromRGBO(0, 102, 177, 1),
                      ),
                    ),
                    Text(
                      state.eventModel.place,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Image(
                      image: AssetImage(
                        state.eventModel.imgPath,
                      ),
                    ),
                    EventDetailsIconRow(dw: dw),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Wykonawcy:',
                          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300,),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: _buildBulletedList(state.eventModel.features),
                        ),
                        const Text(
                          'Program:',
                          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300,),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: _buildBulletedList(state.eventModel.schedule),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }

  Widget _buildBulletedList(List<String> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items
          .map(
            (item) => Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '• ',
              style: TextStyle(fontSize: 12),
            ),
            Expanded(
              child: Text(
                item,
                style: const TextStyle(fontSize: 12),
              ),
            ),
          ],
        ),
      )
          .toList(),
    );
  }
}




