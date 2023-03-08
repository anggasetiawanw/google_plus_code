import 'package:flutter_test/flutter_test.dart';
import 'utils.dart';
import 'package:google_plus_code/google_plus_code.dart' as gpc;

// code,isValid,isShort,isFull
void checkValidity(String csvLine) {
  var elements = csvLine.split(',');
  var code = elements[0];
  var isValid = elements[1] == 'true';
  var isShort = elements[2] == 'true';
  var isFull = elements[3] == 'true';
  expect(gpc.isValid(code), equals(isValid));
  expect(gpc.isShort(code), equals(isShort));
  expect(gpc.isFull(code), equals(isFull));
}

void main() {
  test('Check Validity', () {
    csvLinesFromFile('validityTests.csv').forEach(checkValidity);
  });
}
