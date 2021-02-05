import 'package:flutter/material.dart';
import 'package:flutter_provider/view/first_screen.dart';
import 'package:flutter_provider/widget/cp_appbar.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => FirstScreen());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: CPAppBar(
          title: 'Error',
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
