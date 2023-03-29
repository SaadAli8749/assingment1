// Create a list of strings and find the longest common subsequence (substring) among all the strings in the list.
void main() {
  List<String> stringlist = [
    "Saad Ali",
    "Shakeel Ahmed",
    "Sufiyan Khan",
    "Sikander Ali"
  ];
  String subsequence = "";
  int minLength =
      stringlist.map((s) => s.length).reduce((a, b) => a < b ? a : b);
  for (int i = 0; i < minLength; i++) {
    bool check = true;
    for (int j = 1; j < stringlist.length; j++) {
      if (stringlist[j][i] != stringlist[0][i]) {
        check = false;
        break;
      }
    }
    if (check) {
      subsequence += stringlist[0][i];
    } else {
      break;
    }
  }
  print(subsequence);
}
