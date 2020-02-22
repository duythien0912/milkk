import 'package:flutter_test/flutter_test.dart';

import 'package:milkk/app/services/helper_service.dart';

void main() {
  HelperService service;

  setUp(() {
    service = HelperService();
  });

  group('HelperService Test', () {
    test("First Test", () {
      expect(service, isInstanceOf<HelperService>());
    });
  });
}
