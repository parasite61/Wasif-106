import 'package:geolocator/geolocator.dart';
import 'package:ritu/NetWorking.dart';

final String apiKey = "cd8a47326a9267e8191134b6727a0de8";

class WeatherData {
  late Position position;

  Future<dynamic> locationData() async {
    bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {

      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low);
    NetWorking netWorking = NetWorking(
        "https://api.openweathermap.org/data/2.5/weather?lat=${position.latitude}&lon=${position.longitude}&appid=$apiKey&units=metric");
    dynamic data = await netWorking.GetWeatherData();
    getCitydata("");
    return data;
  }

  Future<dynamic> getCitydata(String city) async {
    NetWorking netWorking = NetWorking(
        "https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey&units=metric");
    dynamic citydata = await netWorking.GetWeatherData();
    return citydata;
  }
}
