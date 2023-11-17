import 'package:flutter/material.dart';
import 'package:team_d/screens/question_screens/question_screen.dart';

class StartButton extends StatelessWidget {
  StartButton({Key? key, required this.width,required this.height, required this.text}) : super(key: key);
  double width;
  double height;
  String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => QuestionScreen(),)
        );
      },
      style: ElevatedButton.styleFrom(
        fixedSize: Size(width, height),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20), // 둥글게 만들기 위한 BorderRadius 설정
        ),
        elevation: 5, // 그림자 높이
        shadowColor: Colors.grey.withOpacity(0.5), // 그림자 색상 설정
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          text,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}