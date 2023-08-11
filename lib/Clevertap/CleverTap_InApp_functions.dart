import 'package:clevertap_plugin/clevertap_plugin.dart';

class ClevertapUserProfileFunctions {
  static void InAppOnClicked(CleverTapPlugin _clevertapPlugin,
      Function(Map<String, dynamic>?) handler) {
    _clevertapPlugin.setCleverTapInAppNotificationButtonClickedHandler(handler);
  }

  static void InAppOnDismissed(CleverTapPlugin _clevertapPlugin,
      Function(Map<String, dynamic>?) handler) {
    _clevertapPlugin.setCleverTapInAppNotificationDismissedHandler(handler);
  }

  static void InAppOnShow(CleverTapPlugin _clevertapPlugin,
      Function(Map<String, dynamic>?) handler) {
    _clevertapPlugin.setCleverTapInAppNotificationShowHandler(handler);
  }

  static void InAppsuspend() {
    CleverTapPlugin.suspendInAppNotifications();
  }

  static void InAppDiscard() {
    CleverTapPlugin.discardInAppNotifications();
  }

  static void InAppResume() {
    CleverTapPlugin.resumeInAppNotifications();
  }
}
