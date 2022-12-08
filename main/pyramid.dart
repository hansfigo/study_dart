import 'dart:io';

void main() {
  int y = 5;

  for (var i = 0; i < y; i++) {
    for (var j = 0; j <= i; j++) {
      stdout.write('*');
    }
    print('');
  }
}
