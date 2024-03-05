double calculateAverage(List<double> numbers) {
  return numbers.reduce((a, b) => a + b) / numbers.length;
}

void main() {
  List<double> numbers = [6, 7, 8, 9, 10];
  double average = calculateAverage(numbers);
  print('The average is: $average');
}
