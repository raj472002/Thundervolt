import 'package:shared_preferences/shared_preferences.dart';

class Prefs {
  static Future<bool> isRemember() async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    bool remember = preferences.getBool("remember") ?? false;
    print('Remember: $remember');
    return remember;
  }

  static Future<dynamic> getUserMobile() async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    String phoneNo = preferences.getString("phone") ?? "";
    print("User Phone No: $phoneNo");
    return phoneNo;
  }
}
