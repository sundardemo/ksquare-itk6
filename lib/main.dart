import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myfirstapp/go_router_example/page1.dart';
import 'package:myfirstapp/go_router_example/page2.dart';
import 'package:myfirstapp/go_router_example/page3.dart';
import 'package:myfirstapp/go_router_example/router.dart';
import 'package:myfirstapp/navigation/age-calculator.dart';
import 'package:myfirstapp/navigation/result.dart';
import 'package:myfirstapp/router_generator.dart';
import 'package:myfirstapp/screens/container-test.dart';
import 'package:myfirstapp/styles/theme.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

main() {
  var widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  FlutterNativeSplash.remove();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: CustomTheme().theme,
      routerConfig: router,
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     debugShowCheckedModeBanner: false,
  //     theme: CustomTheme().theme,
  //     home: ContainerTest(),
  //     initialRoute: '/',
  //     // routes: {
  //     //   '/': (context) => AgeCalculatorScreen(),
  //     //   '/result': (context) => ResultScreen()
  //     // },
  //     onGenerateRoute: RouteGenerator().generateRoute,
  //   );
  // }
}
