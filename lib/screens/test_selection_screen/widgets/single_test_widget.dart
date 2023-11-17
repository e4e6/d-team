import 'package:flutter/material.dart';
import 'package:team_d/models/test_selection_model/test_selection_item.dart';

class SingleTestWidget extends StatelessWidget {
  SingleTestWidget({
    Key? key,
    required this.index,
    required this.testSelectionItem,
    required this.imagePath,
    required this.boxWidth,
    required this.boxHeight,
    required this.title,
    required this.duration,
    required this.questionCount,
    required this.onTap,
  }) : super(key: key);
  final int index;
  final String imagePath;
  final double boxWidth;
  final double boxHeight;
  final String title;
  final String duration;
  final String questionCount;
  TestSelectionItem testSelectionItem;
  void Function() onTap;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: boxWidth,
        height: boxHeight,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 1),
          borderRadius: BorderRadius.circular(boxHeight / 10), // 박스의 모서리를 둥글게 처리
          color: Colors.grey[200], // 박스의 배경색
        ),
        child: Row(
          children: [
            Container(
              width: boxWidth * 1/3, // 왼쪽 이미지 공간의 가로 길이
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(boxHeight / 10),
                  bottomLeft: Radius.circular(boxHeight / 10),
                ),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                ),
              ),
            ),

            SizedBox(width: 10), // 이미지와 텍스트 사이의 간격

            Container(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '검사소요시간: $duration',
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(
                    '문항수: $questionCount',
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

