import 'package:flutter/material.dart';
import 'package:myfirstapp/navigation/age-calculator.dart';
import 'package:myfirstapp/navigation/result.dart';
import 'package:myfirstapp/router_generator.dart';
import 'package:myfirstapp/styles/theme.dart';

main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CustomTheme().theme,
      initialRoute: '/',
      // routes: {
      //   '/': (context) => AgeCalculatorScreen(),
      //   '/result': (context) => ResultScreen()
      // },
      onGenerateRoute: RouteGenerator().generateRoute,
    );
  }
}
