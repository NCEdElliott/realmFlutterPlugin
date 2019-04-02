import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:realm_flutter_plugin/realm_flutter_plugin.dart';

void main() {
  const MethodChannel channel = MethodChannel('realm_flutter_plugin');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await RealmFlutterPlugin.platformVersion, '42');
  });
}
