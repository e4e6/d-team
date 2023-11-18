import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:team_d/config/constant.dart';
import 'package:team_d/controller/setting_controller.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {

  @override
  Widget build(BuildContext context) {
    final SettingControllerWatch = context.watch<SettingController>();
    final SettingControllerRead = context.read<SettingController>();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: SettingControllerWatch.isDarkMode ? Colors.black : Colors.orange,
        title: Text('설정'),
      ),
      body: AnimatedContainer(
        duration: Duration(milliseconds: 500), // 부드러운 색상 전환을 위한 애니메이션
        color: SettingControllerWatch.isDarkMode ? Colors.black : Colors.white, // 배경색 변경
        padding: EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              '계정정보관리',
              style: TextStyle(
                fontSize: Constant.smallFontSize,
                fontWeight: FontWeight.bold,
                color: SettingControllerWatch.isDarkMode ? Constant.maxWhite : Constant.maxBlack, // 텍스트 색상 변경
              ),
            ),
            SwitchListTile(
              title: Text('다크모드'),
              value: SettingControllerWatch.isDarkMode,
              onChanged: (bool value) {
                  SettingControllerWatch.changeIsDarkMode();
              },
            ),
          ],
        ),
      ),
    );
  }
}
