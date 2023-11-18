import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:team_d/controller/question_controller.dart';
import 'package:team_d/controller/test_selection_controller.dart';
import 'package:team_d/screens/question_screens/question_screen.dart';
import 'package:team_d/screens/test_selection_screen/widgets/single_test_widget.dart';

class MentalTestScreen extends StatefulWidget {
   MentalTestScreen({Key? key}) : super(key: key);

  @override
  State<MentalTestScreen> createState() => _MentalTestScreenState();
}

class _MentalTestScreenState extends State<MentalTestScreen> {
  @override
  Widget build(BuildContext _) {
    final testSelectionControllerWatch = _.watch<TestSelectionController>();
    final testSelectionControllerRead = _.read<TestSelectionController>();
    final questionControllerRead = _.read<QuestionController>();

    double mainWidth = 300.0;
    double imageContainerHeight = 400.0;
    double sizedBoxHeight = 100.0;

    return Scaffold(
        appBar:AppBar(
          toolbarHeight: 65,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_rounded,
              size: 30,
              color: Colors.orange,
            ),
            onPressed: () {Navigator.pop(context);},
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text(
                '정신검사',
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

        body: Center(
          child: Column(
            children: [

              ListView.builder(
                shrinkWrap: true,
                itemCount: testSelectionControllerRead.mentalTestItemList.length,
                itemBuilder: (BuildContext _, int testIndex) {
                  return Column(
                    children: [
                      SizedBox(height: 20),
                      SingleTestWidget(
                          index: testIndex,
                          testSelectionItem: testSelectionControllerRead
                              .mentalTestItemList[testIndex],
                          imagePath: testSelectionControllerRead
                              .mentalTestItemList[testIndex].imagePath,
                          boxWidth: 320,
                          boxHeight: 140,
                          title: testSelectionControllerRead
                              .mentalTestItemList[testIndex].questionTitle,
                          duration: testSelectionControllerRead
                              .mentalTestItemList[testIndex]
                              .expectedTimeInMinutes.toString(),
                          questionCount: testSelectionControllerRead
                              .mentalTestItemList[testIndex].numberOfQuestions
                              .toString(),
                          onTap: () {
                            final questionControllerRead = context.read<QuestionController>();
                            questionControllerRead.setQuestionBundleList(testSelectionControllerRead.mentalTestItemList[testIndex].questionBundleList);
                            testSelectionControllerRead.setIndex(testIndex);
                            questionControllerRead.ChangeQuestionBundleListandIndexToInitialState(context);
                            questionControllerRead.setQuestionBundleList(testSelectionControllerRead.mentalTestItemList[testIndex].questionBundleList);
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => QuestionScreen()),);
                          }),
                    ],
                  );
                }),
            ],
          ),
        )

    );

  }
}



class StartImageContainer extends StatelessWidget {
  StartImageContainer({Key? key, required this.width,required this.height, required this.text}) : super(key: key);
  double width;
  double height;
  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/image/start_screen_image.png',
              width: 280,
            ),
          ],
        ),
      ),
    );
  }
}