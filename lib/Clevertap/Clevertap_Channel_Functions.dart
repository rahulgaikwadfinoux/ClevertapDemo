import 'package:clevertap_plugin/clevertap_plugin.dart';

class ClevertapChannelFunctions {
  static void CreateChannelCustom(
    String channelId,
    String channelName,
    String channelDescription,
    int importance,
    bool showBadge,
  ) {
    CleverTapPlugin.createNotificationChannel(
        channelId, channelName, channelDescription, importance, showBadge);
  }

  static void DeleteChannelCustom(
    String channelId,
  ) {
    CleverTapPlugin.deleteNotificationChannel(channelId);
  }

  static void CreateGroupChannelCustom(
    String groupId,
    String groupName,
  ) {
    CleverTapPlugin.createNotificationChannelGroup(groupId, groupName);
  }

  static void DeleteGroupChannelCustom(
    String channelId,
  ) {
    CleverTapPlugin.deleteNotificationChannelGroup(channelId);
  }
}
