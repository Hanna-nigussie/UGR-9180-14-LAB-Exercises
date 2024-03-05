void main() {
  int n = 10;
  int first = 0, second = 1, next;
  
  print('First $n Fibonacci numbers:');
  for (int i = 0; i < n; i++) {
    print('$first');
    next = first + second;
    first = second;
    second = next;
  }
}
