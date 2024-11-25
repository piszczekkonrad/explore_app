
import 'package:injectable/injectable.dart';

@injectable
class EventsDataSource{
  List<String> getHorizontalScrollableImages () {
    return [
      'assets/images/Frame12.png',
      'assets/images/Frame.png',
    ];
  }
}