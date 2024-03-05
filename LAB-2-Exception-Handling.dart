

void main() {
  try {
    dynamic value = 'string';
    int intValue = int.parse(value);
    print('Parsed value: $intValue');
  } catch (e) {
    print('Caught exception: $e');
  }
}
