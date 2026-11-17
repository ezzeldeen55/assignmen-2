import 'dart:io';

int naturalNumbers(int n) {
  int sum = 0;

  for (int i = 1; i <= n; i++) {
    print(i);
    sum += i;
  }

  return sum;
}

void main() {
  int n = 7;

  int result = naturalNumbers(n);

  print("The Sum of Natural Numbers upto $n terms: $result");
}
//////////////////////////////////////////////////////////////////////////////
//Q2/////

int multiplicationTable(int n) {
  for (int i = 1; i <= 10; i++) {
    print('$n x $i = ${n * i}');
  }

  return n;
}

void main() {
  int n = 5;

  multiplicationTable(n);
}
//////////////////////////////////////////////////////////////////////////////
//Q3

import 'dart:io';

void oddNumbers(int n) {
  int sum = 0;

  stdout.write("The odd numbers are: ");

  for (int i = 1; i <= n; i++) {
    int odd = (2 * i) - 1;
    stdout.write("$odd ");
    sum += odd;
  }

  print("\nThe Sum of odd Natural Numbers upto $n terms: $sum");
}

void main() {
  int n = 10;
  oddNumbers(n);
}
//////////////////////////////////////////////////////////////////////////////
//Q4

void countNumbers(List<int> numbers) {
  int positive = 0;
  int negative = 0;
  int zero = 0;

  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] > 0) {
      positive++;
    } else if (numbers[i] < 0) {
      negative++;
    } else {
      zero++;
    }
  }

  print("You Entered $positive positive numbers");
  print("$negative negative and $zero Zero");
}

void main() {
  int n = 4;

  List<int> numbers = [13, -9, 0, 5];

  print("How many Number you want to check?");
  print(n);

  print("Enter $n numbers");

  countNumbers(numbers);
}
/////////////////////////////////////////////////////////////////////////////
//Q5

int factorial(int n) {
  int result = 1;

  for (int i = 1; i <= n; i++) {
    result *= i;
  }

  return result;
}

void main() {
  int n = 5;

  int answer = factorial(n);

  print(answer);
}
////////////////////////////////////////////////////////////////////////////
//Q6

int reverseNumber(int n) {
  int reversed = 0;

  while (n > 0) {
    int digit = n % 10;
    reversed = reversed * 10 + digit;
    n = n ~/ 10;
  }

  return reversed;
}

void main() {
  int n = 12345;

  int result = reverseNumber(n);

  print(result);
}
///////////////////////////////////////////////////////////////////////////////
//Q7

import 'dart:io';

void divisibleNumbers() {
  for (int i = 100; i <= 1000; i++) {
    if (i % 5 == 0 && i % 6 == 0) {
      stdout.write("$i ");
    }
  }
}

void main() {
  divisibleNumbers();
}
/////////////////////////////////////////////////////////////////////////////
///Q8
bool isPrime(int n) {
  if (n <= 1) {
    return false;
  }

  for (int i = 2; i < n; i++) {
    if (n % i == 0) {
      return false;
    }
  }

  return true;
}

void main() {
  int n = 7;

  if (isPrime(n)) {
    print("yes");
  } else {
    print("no");
  }
}
///////////////////////////////////////////////////////////////////////////////
//Q9

int power(int base, int exponent) {
  int result = 1;

  for (int i = 1; i <= exponent; i++) {
    result *= base;
  }

  return result;
}

void main() {
  int base = 2;
  int exponent = 3;

  int answer = power(base, exponent);

  print(answer);
}