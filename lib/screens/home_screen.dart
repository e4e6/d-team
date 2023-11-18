import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:team_d/config/constant.dart';
import 'package:team_d/controller/question_controller.dart';
import 'package:team_d/screens/setting_screen/setting_screen.dart';
import 'package:team_d/screens/test_selection_screen/body_test_screen.dart';
import 'package:team_d/screens/test_selection_screen/mental_test_screen.dart';

import 'home_screen/widgets/profile_selection_widget.dart';
import 'home_screen/widgets/progress_widget.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    bool isProfileSelected = true;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 65,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_rounded,
              size: 30,
              color: Colors.orange,
            ),
            onPressed: () {},
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text(
                '노리진단',
                style: TextStyle(
                  fontFamily: 'Jalnan',
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.circle),
              iconSize: 40,
              onPressed: (){},
            ),
          ],
        ),
        body: TabBarView(
          children: [
        Stack(
        children: [
        Container(
        color: Constant.backgroundColorf2f2f2,
        ),

        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: Constant.topPadding),
            SizedBox(height: Constant.mainGap),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Constant.mainSidePadding),
              child: Center(child: ProfileSelectionWidget()),
            ),
            SizedBox(height: Constant.mainGap),
            ProgressWidget(),
          ],
        ),
          Positioned(
            bottom: 20,
            child: isProfileSelected
                ? Row(
              children: [
                InkWell(
                  onTap: (){Navigator.of(context).push(_createRouteMentalTest());},
                  child: Image.asset(
                    'assets/image/Group 213junggum.png',
                    width: 170,
                    height: 230,
                  ),
                ),
                SizedBox(width: Constant.mainGap,),
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(_createRouteBodyTest());},
                  child: Image.asset(
                    'assets/image/Group 214singum.png',
                    width: 170,
                    height: 230,
                  ),
                ),
              ],
            )
                : Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.asset(
                  'assets/image/Group236moon.png',
                  width: 132,
                  height: 243,
                ),
                Container(
                  width: 300,
                  height: 243,
                  color: Color.fromRGBO(79, 74, 69, 0.7),
                ),
              ],
            ),
          )

        ],
      ),
            SettingScreen(),
          ],
        ),
        extendBodyBehindAppBar: true,
        bottomNavigationBar: Stack(
          children: [
            Container(
              color: Colors.white,
              height: 70,
              child: const TabBar(
                indicator: BoxDecoration(),
                labelColor: Constant.orange,
                unselectedLabelColor: Colors.black38,
                labelStyle: TextStyle(
                  fontSize: 13,
                ),

                tabs: [
                  Tab(
                    icon: Icon(
                      Icons.home_sharp,
                    ),
                    text: '홈',
                  ),
                  Tab(
                    icon: Icon(
                      Icons.settings,
                    ),
                    text: '설정',
                  )

                ],
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).padding.bottom + 10,
              left: MediaQuery.of(context).size.width / 2 - 30,
              child: InkWell(
                onTap: (){},
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/image/Group 234nori.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );


      MentalTestScreen();
  }
}

Route _createRouteMentalTest() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => MentalTestScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(
        opacity: animation,
        child: child,
      );
    },
    transitionDuration: Duration(milliseconds: 100),
  );
}

Route _createRouteBodyTest() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => BodyTestScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(
        opacity: animation,
        child: child,
      );
    },
    transitionDuration: Duration(milliseconds: 100),
  );
}