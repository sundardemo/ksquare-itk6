import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myfirstapp/screens/bottom_nav.dart';
import 'package:myfirstapp/screens/counter.dart';
import 'package:myfirstapp/screens/home.dart';
import 'package:myfirstapp/screens/input_example.dart';
import 'package:myfirstapp/screens/list_view.dart';
import 'package:myfirstapp/screens/row_column.dart';
import 'package:myfirstapp/screens/singlechild.dart';
import 'package:myfirstapp/screens/stack_example.dart';
import 'package:myfirstapp/screens/tabbar_example.dart';

main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.latoTextTheme(),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.green,
        ),
      ),
      home: SingleChildScrollExample(),
    ),
  );
}
