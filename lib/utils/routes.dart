import 'package:demo/screens/home.dart';
import 'package:get/get.dart';

class AppRoutes {
  static List<GetPage<dynamic>> routes = [
    GetPage(name: '/home', page: () => HomeScreen())
  ];
}
