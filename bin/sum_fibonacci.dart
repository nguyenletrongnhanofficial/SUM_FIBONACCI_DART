import 'dart:io';

void main() {
  print('Nhập số a: ');
  int a = int.parse(stdin.readLineSync()!);

  print('Nhập số b: ');
  int b = int.parse(stdin.readLineSync()!);

  try {
    int sum = fibonacciSum(a, b);
    print('Tổng các phần từ $a đến $b là: $sum');
  } catch (e) {
    print('Đã xảy ra lỗi: $e');
  }
}

int fibonacciSum(int a, int b) {
  if (a >= b) {
    throw ArgumentError('a phải nhỏ hơn b');
  }

  int sum = 0;
  for (int i = a; i <= b; i++) {
    sum += fibonacci(i);
  }

  return sum;
}

int fibonacci(int n) {
  if (n == 0) {
    return 0;
  } else if (n == 1) {
    return 1;
  } else {
    return fibonacci(n - 1) + fibonacci(n - 2);
  }
}
