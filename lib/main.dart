import 'package:flutter/material.dart';
import 'package:hello_world/pages/home_page.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Website Demo',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData.dark().copyWith(
        // textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)),
        home: HomePage(),
      
      
    );
  }
}
