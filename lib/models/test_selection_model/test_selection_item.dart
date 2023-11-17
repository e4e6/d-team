import 'package:team_d/models/question_model/question_bundle_item.dart';

class TestSelectionItem {
  String questionTitle;
  List<QuestionBundleItem> questionBundleList;
  int numberOfQuestions;
  int expectedTimeInMinutes;
  String imagePath;

  TestSelectionItem({
    this.questionTitle = "[question_bundle_item:]제목 추가 필요",
    this.questionBundleList = const [],
    this.numberOfQuestions = 0,
    this.expectedTimeInMinutes = 0,
    this.imagePath = "assets/image/question_mark.png",
  });
}