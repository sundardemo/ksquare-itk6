import 'package:flutter/material.dart';

import 'navigation/age-calculator.dart';
import 'navigation/result.dart';

class RouteGenerator {
  var generateRoute = ((settings) {
    var routeName = settings.name;
    var args = settings.arguments;
    switch (routeName) {
      case '/':
        return MaterialPageRoute(builder: (context) => AgeCalculatorScreen());

      case '/result':
        return MaterialPageRoute(
          builder: (context) => ResultScreen(
            data: args,
          ),
        );
    }
  });
}
