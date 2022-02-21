import 'package:flutter_test/flutter_test.dart';
import 'package:miscelanea/pages/valid_tin_generator/model/tin_model.dart';
import 'dart:math';

void main() {
  testWidgets('tin model ...', (tester) async {
    var tin = Tin();
    bool created = false;
    while (created == false) {
      String randomTin = Random().nextInt(999999999).toString();
      randomTin += Random().nextInt(99).toString();
      if (randomTin.length == 11) {
        created = tin.validateTin(randomTin);
      }
    }
    //print(a.validateTin('46440051857'));
    print(tin.tin);
  });
}
