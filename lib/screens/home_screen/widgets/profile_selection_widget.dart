import 'package:flutter/material.dart';
import 'package:team_d/screens/profile_selection_screen/profile_selection_screen.dart';

class ProfileSelectionWidget extends StatelessWidget {
  const ProfileSelectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).push(_createRoute());
      },
      child: Image.asset(
        'assets/image/profile_setting.png',
        width: 300,
        height: 100,
      ),
    );
  }
}
Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => ProfileSelectionScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(
        opacity: animation,
        child: child,
      );
    },
    transitionDuration: Duration(milliseconds: 100),
  );
}