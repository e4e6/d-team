import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:team_d/controller/question_controller.dart';
import 'package:team_d/controller/test_selection_controller.dart';
import 'package:team_d/screens/question_screens/question_screen.dart';
import 'package:team_d/screens/test_selection_screen/widgets/single_test_widget.dart';

class TestSelectionScreen extends StatefulWidget {
   TestSelectionScreen({Key? key}) : super(key: key);

  @override
  State<TestSelectionScreen> createState() => _TestSelectionScreenState();
}

class _TestSelectionScreenState extends State<TestSelectionScreen> {
  @override
  Widget build(BuildContext _) {
    final testSelectionControllerWatch = _.watch<TestSelectionController>();
    final testSelectionControllerRead = _.read<TestSelectionController>();
    final questionControllerRead = _.read<QuestionController>();

    double mainWidth = 300.0;
    double imageContainerHeight = 400.0;
    double sizedBoxHeight = 100.0;

    return Scaffold(
        appBar:
        AppBar(
          title: Text(
          '건강나이 테스트',
          style: TextStyle(
            fontWeight: FontWeight.bold, // 볼드 처리
          ),
        ),
          centerTitle: true, // 중앙 정렬
          elevation: 0.0,
          toolbarHeight: 50.0,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(4.0), // 선의 높이 조절
            child: Divider(
              color: Colors.grey, // 선의 색상 조절
              height: 1.0, // 선의 두께 조절
            ),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 20),

              ListView.builder(
                shrinkWrap: true,
                itemCount: testSelectionControllerRead.testSelectionItemList.length,
                itemBuilder: (BuildContext _, int testIndex) {
                  return SingleTestWidget(
                      index: testIndex,
                      testSelectionItem: testSelectionControllerRead
                          .testSelectionItemList[testIndex],
                      imagePath: testSelectionControllerRead
                          .testSelectionItemList[testIndex].imagePath,
                      boxWidth: 320,
                      boxHeight: 140,
                      title: testSelectionControllerRead
                          .testSelectionItemList[testIndex].questionTitle,
                      duration: testSelectionControllerRead
                          .testSelectionItemList[testIndex]
                          .expectedTimeInMinutes.toString(),
                      questionCount: testSelectionControllerRead
                          .testSelectionItemList[testIndex].numberOfQuestions
                          .toString(),
                      onTap: () {
                        testSelectionControllerRead.setIndex(testIndex);
                        final questionControllerRead = context.read<QuestionController>();
                        questionControllerRead.ChangeQuestionBundleListandIndexToInitialState(context);
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => QuestionScreen()),);
                      });
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