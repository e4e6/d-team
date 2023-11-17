import 'package:flutter/material.dart';
import 'package:team_d/screens/test_selection_screen/test_selection_screen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return TestSelectionScreen();
  }
}