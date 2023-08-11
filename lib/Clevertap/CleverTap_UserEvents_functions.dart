import 'package:clevertap_plugin/clevertap_plugin.dart';

class ClevertapUserEventFunctions {
  static void CustomerecordEvent(
      String eventName, Map<String, dynamic> properties) {
    CleverTapPlugin.recordEvent(eventName, properties);
  }

  static void CustomrecordChargedEvent(
      Map<String, dynamic> chargeDetails, List<Map<String, dynamic>> items) {
    CleverTapPlugin.recordChargedEvent(chargeDetails, items);
  }
}
