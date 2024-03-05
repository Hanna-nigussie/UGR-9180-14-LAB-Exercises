

Future<int> fetchNumber() {
  return Future.delayed(Duration(seconds: 2), () => 42);
}

Future<void> main() async {
  print('Fetching number...');
  int number = await fetchNumber();
  print('Fetched number: $number');
}
