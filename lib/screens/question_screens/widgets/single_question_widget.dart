import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:team_d/controller/question_controller.dart';
import 'package:team_d/models/question_model/question_bundle_item.dart';
import 'package:team_d/models/question_model/question_item.dart';

class SingleQuestionWidget extends StatefulWidget {
  SingleQuestionWidget({
    Key? key,
    required this. questionIndex,
  }) : super(key: key);

  int questionIndex;

  @override
  State<SingleQuestionWidget> createState() => _SingleQuestionWidgetState();
}

class _SingleQuestionWidgetState extends State<SingleQuestionWidget> {
  @override
  Widget build(BuildContext _) {
    final questionControllerWatch = _.watch<QuestionController>();

    QuestionBundleItem questionBundleItem = questionControllerWatch.questionBundleList[questionControllerWatch.questionBundleListIndex];
    QuestionItem questionItem = questionBundleItem.questionList[widget.questionIndex];

    return InkWell(
      onTap:(){
        questionControllerWatch.CheckboxHandler(questionControllerWatch.questionBundleListIndex, widget.questionIndex);
      },
      child: Row(
        children: [
          Checkbox(
            value: questionItem.isChecked,
            onChanged: (value) {
              questionControllerWatch.CheckboxHandler(questionControllerWatch.questionBundleListIndex, widget.questionIndex);
            }
          ),
          Flexible(
            child: RichText(
              overflow: TextOverflow.ellipsis,
              maxLines: 5,
              // strutStyle: StrutStyle(fontSize: 16.0),
              text: TextSpan(
                  text: questionItem.questionText,
                  style: TextStyle(color: Colors.black, fontSize: 16.0)),
            ),
          )
        ],
      ),
    );
  }
}