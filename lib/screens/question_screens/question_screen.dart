import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:team_d/config/constant.dart';
import 'package:team_d/controller/question_controller.dart';
import 'package:team_d/screens/question_screens/widgets/bundle_question_image_widget.dart';
import 'package:team_d/screens/question_screens/widgets/bundle_question_widget.dart';

class QuestionScreen extends StatefulWidget {
  QuestionScreen({Key? key}) : super(key: key);

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext _) {

    final questionControllerWatch = _.watch<QuestionController>();
    final questionControllerRead = _.read<QuestionController>();
    return Scaffold(
      backgroundColor: Constant.backgroundColorf2f2f2,
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),

          AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            child: BundleQuestionImageWidget(),
          ),

          SizedBox(
            height: 20,
          ),

          AnimatedSwitcher(
            duration: const Duration(milliseconds: 200),
            child: BundleQuestionWidget(
              key: ValueKey<int>(questionControllerWatch.questionBundleListIndex),
            ),
            transitionBuilder: (child, animation) {
              return FadeTransition(
                opacity: animation,
                child: ScaleTransition(
                  scale: animation,
                  child: child,
                ),
              );
            },
          ),

          const Expanded(
            child: Center(child: null),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Visibility(
                visible: questionControllerWatch.questionBundleListIndex != 0,
                child: ElevatedButton(
                  onPressed: () {
                    questionControllerWatch.changeToPreviousQuestionBundle();
                  },
                  child: Text(
                    ' 이전 ',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Visibility(
                visible: questionControllerWatch.questionBundleListIndex == 0,
                child: SizedBox(width:94),
              ),
              SizedBox(width: 80,),
              ElevatedButton(
                  onPressed: () {
                    if(questionControllerWatch.questionBundleListIndex == questionControllerWatch.questionBundleList.length-1){
                      questionControllerWatch.openResultScreen(context);

                    }
                    questionControllerWatch.changeToNextQuestionBundle();
                  },
                  child: Text(
                    questionControllerWatch.questionBundleListIndex == questionControllerWatch.questionBundleList.length-1
                      ? ' 제출 '
                      : ' 다음 '
                    ,
                    style: TextStyle(fontSize: 20),
                  )
              ),
            ],
          ),
          const Padding(padding: EdgeInsets.only(bottom: 40),),
        ],
      ),
    );
  }
}
