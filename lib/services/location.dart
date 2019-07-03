import 'package:geolocator/geolocator.dart';

class Location {
  void get() async {
    Position position;
    try {
      position = await Geolocator().getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low,
      );
    }
    catch (e) {
      print(e);
    }
    print(position ?? 'no location given');
  }
}