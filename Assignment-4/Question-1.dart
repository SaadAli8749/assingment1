// Create a list of integers and find the longest subsequence of consecutive numbers in the list.
void main() {
  List<int> numbers = [2, 3, 6, 7, 9, 10, 11, 12, 13, 16, 19, 21];

  List<int> longestSubsequence = [];
  List<int> currentSubsequence = [];

  for (int i = 0; i < numbers.length; i++) {
    if (currentSubsequence.isEmpty ||
        numbers[i] == currentSubsequence.last + 1) {
      currentSubsequence.add(numbers[i]);
    } else {
      if (currentSubsequence.length > longestSubsequence.length) {
        longestSubsequence = currentSubsequence.toList();
      }
      currentSubsequence.clear();
      currentSubsequence.add(numbers[i]);
    }
  }

  if (currentSubsequence.length > longestSubsequence.length) {
    longestSubsequence = currentSubsequence.toList();
  }

  print(
      'The longest subsequence of consecutive numbers in the list is: $longestSubsequence');
}
