List removeDuplicates(List<int> numbers) {
  return numbers.toSet().toList();
}

void main() {
  List<int> numbers = [1, 2, 2, 3, 3, 4, 5, 5];
  List<int> uniqueNumbers = removeDuplicates(numbers);
  print('List after removing duplicates: $uniqueNumbers');
}
