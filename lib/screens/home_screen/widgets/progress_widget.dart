import 'package:flutter/material.dart';

class ProgressWidget extends StatelessWidget {
  const ProgressWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Image.asset(
       'assets/image/Frame 1frame.png',
        width: MediaQuery.of(context).size.width+40,
        );
  }
}
