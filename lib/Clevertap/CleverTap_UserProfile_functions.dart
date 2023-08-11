import 'package:clevertap_plugin/clevertap_plugin.dart';

class ClevertapUserProfileFunctions {
  static void CustomeProfileSetCustomer(Map<String, dynamic> profile) {
    CleverTapPlugin.profileSet(profile);
  }

  static void CustomeOnLogin(Map<String, dynamic> profile) {
    CleverTapPlugin.onUserLogin(profile);
  }

  static void CustomProfileSetMultiValues(String key, List<dynamic> values) {
    CleverTapPlugin.profileSetMultiValues(key, values);
  }

  static void CustomprofileRemoveMultiValues(String key, List<dynamic> values) {
    CleverTapPlugin.profileRemoveMultiValues(key, values);
  }

  static void CustomprofileIncrementValue(String key, num values) {
    CleverTapPlugin.profileIncrementValue(key, values);
  }

  static void CustomprofileDecrementValue(String key, num values) {
    CleverTapPlugin.profileDecrementValue(key, values);
  }

  static String CustomGetCleverTapID() {
    CleverTapPlugin.getCleverTapID().then((clevertapId) {
      return clevertapId;
    }).catchError((error) {
      return error;
    });
    return 'getCleverTapID not Executed';
  }

  static void CustomsetLocation(double latitude, double longitude) {
    CleverTapPlugin.setLocation(latitude, longitude);
  }
}
