// Create a map that associates the names of cities with their latitude and longitude coordinates. Given a starting and ending city, find the shortest distance between them (you can assume a spherical Earth)
import 'dart:math' as math;

void main() {
  Map<String, List<double>> cityLocations = {
    'Karachi': [24.8607, -67.0011],
    'Dubai': [25.2048, -55.2708],
    'Berlin': [52.5200, -13.4050],
    'Munich': [48.1351, -11.5820],
    'Melbourne': [37.8136, -144.9631],
    'Toronto': [43.6532, -79.3832],
    'Miami': [25.7617, -80.1918],
    'New York': [40.7128, -74.0060]
  };

  String startCity = 'Karachi';
  String endCity = 'New York';

  double distance = calculateDistance(
      cityLocations[startCity]![0],
      cityLocations[startCity]![1],
      cityLocations[endCity]![0],
      cityLocations[endCity]![1]);

  print(
      'The shortest distance between $startCity and $endCity is ${distance.round()} km.');
}

double calculateDistance(double lat1, double lon1, double lat2, double lon2) {
  const double earthRadius = 6371;
  double latDistance = math.pi / 180 * (lat2 - lat1);
  double lonDistance = math.pi / 180 * (lon2 - lon1);
  double a = math.sin(latDistance / 2) * math.sin(latDistance / 2) +
      math.cos(math.pi / 180 * (lat1)) *
          math.cos(math.pi / 180 * (lat2)) *
          math.sin(lonDistance / 2) *
          math.sin(lonDistance / 2);
  double c = 2 * math.atan2(math.sqrt(a), math.sqrt(1 - a));
  double distance = earthRadius * c;
  return distance;
}
