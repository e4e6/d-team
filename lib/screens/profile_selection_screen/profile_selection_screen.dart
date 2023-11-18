import 'package:flutter/material.dart';
import 'package:team_d/config/constant.dart';

class ProfileSelectionScreen extends StatefulWidget {
  const ProfileSelectionScreen({Key? key}) : super(key: key);

  @override
  State<ProfileSelectionScreen> createState() => _ProfileSelectionScreenState();
}

class _ProfileSelectionScreenState extends State<ProfileSelectionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: Constant.topPadding,),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '나는 ',
                style: TextStyle(color: Colors.black, fontSize: Constant.mainFontSize), // 폰트 크기 20
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 4.0),
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: Text(
                  '엄마',
                  style: TextStyle(color: Colors.white, fontSize: Constant.mainFontSize+5), // 폰트 크기 24
                ),
              ),
              Text(
                ' 입니다.',
                style: TextStyle(color: Colors.black, fontSize: Constant.mainFontSize), // 폰트 크기 20
              ),
            ],
          ),

          SizedBox(height: Constant.mainGap,),

          Container(
            width: 100.0,
            height: 100.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue, // 색상 설정
            ),
          )

        ],
      ),
    );
  }
}
