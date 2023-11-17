import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:team_d/controller/question_controller.dart';

class BundleQuestionImageWidget extends StatefulWidget {
  const BundleQuestionImageWidget({Key? key}) : super(key: key);

  @override
  State<BundleQuestionImageWidget> createState() => _BundleQuestionImageWidgetState();
}

class _BundleQuestionImageWidgetState extends State<BundleQuestionImageWidget> {
  @override
  Widget build(BuildContext _) {
    final questionControllerWatch = _.watch<QuestionController>();
    final questionControllerRead = _.read<QuestionController>();

    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child:
      /* Image.asset에서 Default 이미지인 question_mark.png 는 높이-폭 비율이 같음
      반면 일반적으로 Image.asset 에 들어갈 이미지들은 높이(height)에 비해 폭(width)이 큼
      그래서 기준을 폭(width)에 맞추면 (앱이 반응형 ui로 디자인 되지 않았기 때문에) overflow가 발생함
      그래서 기준을 height, width 중에서 짧은쪽인 height에 맞춰 overflow가 일어나지 않도록 함
      근본적인 해결 방안은 아니지만 일단 임시방편으로 이렇게 해둠 */
      Image.asset(
        questionControllerWatch.questionBundleList[questionControllerWatch.questionBundleListIndex].imagePath,
      height:180
      ),
    );
  }
}