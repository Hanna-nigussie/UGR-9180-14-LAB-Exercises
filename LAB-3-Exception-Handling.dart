

void main() {
  try {
    throw Exception('An exception occurred!');
  } catch (e) {
    print('Caught exception: $e');
  } finally {
    print('This code will always run.');
  }
}
