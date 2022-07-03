import 'package:get/get.dart';
import 'package:test/screens/home_screen.dart';
import 'package:test/screens/index.dart';

class AppConfigs {
  static String appName = 'C For Coding';
  static List<GetPage> routes = [
    GetPage(name: '/splash', page: () => SplashScreen()),
    GetPage(name: '/home', page: () => HomeScreen()),
  ];
  static String initialRoute = '/splash';

  static String rootApiUrl = 'http://127.0.0.1:3000';
}
