import 'package:explore_app/features/events/cubit/events_cubit.dart';
import 'package:explore_app/features/events/models/events_model.dart';
import 'package:explore_app/features/events/widgets/horizontal_scrollable_images_row.dart';
import 'package:explore_app/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

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

class EventsListViewElement extends StatefulWidget {
  EventsListViewElement({
    super.key,
    required this.event,
    required this.dh,
  });

  final EventsModel event;
  final double dh;

  @override
  State<EventsListViewElement> createState() => _EventsListViewElementState();
}

class _EventsListViewElementState extends State<EventsListViewElement> {
  bool isFavorite = false;

  void changeFavorite() {
    setState(() {
      isFavorite ? isFavorite = false : isFavorite = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        8,
      ),
      child: Material(
        elevation: 2,
        borderRadius: BorderRadius.circular(10),
        child: SizedBox(
          height: 110,
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Image(
                  image: AssetImage(
                    widget.event.imgPath,
                  ),
                  fit: BoxFit.cover,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(4, 4, 0, 4),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.event.title,
                          style: TextStyle(
                            fontSize: widget.dh * .020,
                            fontWeight: FontWeight.w700,
                            overflow: TextOverflow.clip,
                          ),
                        ),
                        Text(
                          widget.event.place,
                          style: TextStyle(
                              fontSize: widget.dh * .015,
                              fontWeight: FontWeight.w200,
                              overflow: TextOverflow.clip,
                              color: const Color.fromRGBO(49, 49, 48, 0.6)),
                        ),
                        const Expanded(
                          child: SizedBox(),
                        ),
                        Text(
                          widget.event.date,
                          style: TextStyle(
                              fontSize: widget.dh * .015,
                              fontWeight: FontWeight.w200,
                              overflow: TextOverflow.clip,
                              color: const Color.fromRGBO(49, 49, 48, 0.6)),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: widget.dh * .05,
                        width: widget.dh * .05,
                        child: DecoratedBox(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(239, 239, 239, 1),
                          ),
                          child: IconButton(
                              onPressed: () {
                                changeFavorite();
                              },
                              icon: !isFavorite
                                  ? Icon(
                                      Icons.favorite_border_outlined,
                                      color: const Color.fromRGBO(
                                          255, 255, 255, 1),
                                      size: widget.dh * .03,
                                    )
                                  : Icon(
                                      Icons.favorite,
                                      color:
                                          const Color.fromRGBO(13, 222, 174, 1),
                                      size: widget.dh * .03,
                                    )),
                        ),
                      ),
                      const Expanded(
                        child: SizedBox(),
                      ),
                      SvgPicture.asset(
                        'assets/custom_icons/corner.svg',
                        colorFilter:
                        isFavorite?
                        ColorFilter.mode( Color.fromRGBO(13, 222, 174, 1), BlendMode.srcIn):
                        ColorFilter.mode( Color.fromRGBO(239, 239, 239, 1), BlendMode.srcIn),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
