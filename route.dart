import 'package:flutter/material.dart';
import 'package:project/dormitory3_4.dart';
import 'package:project/home.dart';
import 'package:project/history.dart';
import 'package:project/ProfileTH.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    // final args = settings.arguments;

    switch (settings.name) {
      // case '/':
      //   return MaterialPageRoute(builder: (_) => LoginPage());
      case '/home':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/history':
        return MaterialPageRoute(builder: (_) => HistoryPage());
      case '/Account':
        return MaterialPageRoute(builder: (_) => Account());
      case '/Dorm':
        return MaterialPageRoute(builder: (_) => MyHomePage());
      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('Page not found'),
        ),
      );
    });
  }
}
