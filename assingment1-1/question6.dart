import 'dart:io';

void main() {
  stdout.write("Enter a positive integer: ");
  int n = int.parse(stdin.readLineSync()!);

  if (n <= 1) {
    print("$n is not a prime number.");
    return;
  }

  for (int i = 2; i <= n / 2; i++) {
    if (n % i == 0) {
      print("$n is not a prime number.");
      return;
    }
  }

  print("$n is a prime number.");
}
