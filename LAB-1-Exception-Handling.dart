

void throwException() {
  throw Exception('This is an exception!');
}

void main() {
  try {
    throwException();
  } catch (e) {
    print('Caught exception: $e');
  }
}
