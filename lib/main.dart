import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:team_d/controller/setting_controller.dart';
import 'package:team_d/controller/test_selection_controller.dart';
import 'package:team_d/screens/home_screen.dart';

import 'controller/question_controller.dart';
import 'controller/result_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => QuestionController()),
      ChangeNotifierProvider(create: (_) => ResultController()),
      ChangeNotifierProvider(create: (_) => TestSelectionController()),
      ChangeNotifierProvider(create: (_) => SettingController()),
    ],
      child:MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home:HomeScreen(),
      ),);
  }
}
