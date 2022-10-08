import 'package:flutter/material.dart';
import 'package:meditation_app_flutter_ui/Screens/bottomNavigationBar.dart';
import 'package:meditation_app_flutter_ui/inner_screen/MeditationScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meditation flutter app UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const bottomNavigationBar(),
      debugShowCheckedModeBanner: false,
      routes: {
        MeditationScreen.routeName : (context) => const MeditationScreen(),
      },

    );
  }
}

