import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:myfirstapp/go_router_example/page1.dart';
import 'package:myfirstapp/go_router_example/page2.dart';
import 'package:myfirstapp/go_router_example/page3.dart';

final router = GoRouter(initialLocation: '/', routes: [
  GoRoute(
    path: '/',
    pageBuilder: (context, state) {
      return MaterialPage(
        child: Page1(),
      );
    },
  ),
  GoRoute(
    path: '/page2',
    pageBuilder: (context, state) {
      return MaterialPage(
        child: Page2(
          data: state.extra as Map,
        ),
      );
    },
  ),
  GoRoute(
    path: '/page3',
    pageBuilder: (context, state) {
      return MaterialPage(
        child: Page3(),
      );
    },
  ),
]);
