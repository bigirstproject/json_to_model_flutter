import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:json_and_model_flutter/json_and_model_flutter.dart';

void main() {
  const MethodChannel channel = MethodChannel('json_and_model_flutter');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await JsonAndModelFlutter.platformVersion, '42');
  });
}
