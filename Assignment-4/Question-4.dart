// Create a map that associates the names of countries with their population and area. Find the top 5 largest countries by population density (population / area).
void main() {
  Map<String, List<double>> Countries = {
    "Pakistan": [5555, 8888],
    "India": [12121, 882323288],
    "Bangladesh": [78787, 89898],
    "Saudi Arabia": [56565, 8815151588],
    "Afghanistan": [25425, 353535],
  };
  var Densities = Countries.entries
      .map((e) => MapEntry(e.key, e.value[0] / e.value[1]))
      .toList();
  Densities.sort((a, b) => b.value.compareTo(a.value));
  var TopCountries = Densities.sublist(0, 5);
  print('Top 5 countries by population density:');
  for (final country in TopCountries) {
    print('${country.key} : with density :  ${country.value}');
  }
}
