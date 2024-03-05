int findHighest(List<int> numbers) {
  return numbers.reduce((value, element) => value > element ? value : element);
}

void main() {
  List<int> numbers = [3, 7, 1, 9, 5];
  int highestNumber = findHighest(numbers);
  print('The highest number is: $highestNumber');
}
