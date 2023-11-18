import 'package:team_d/models/question_model/question_bundle_item.dart';
import 'package:team_d/models/result_model/result_item.dart';

class TestSelectionItem {
  String questionTitle;
  List<QuestionBundleItem> questionBundleList;
  List<ResultItem> resultItemList;
  int numberOfQuestions;
  int expectedTimeInMinutes;
  String imagePath;

  TestSelectionItem({
    this.resultItemList = const [],
    this.questionTitle = "[question_bundle_item:]제목 추가 필요",
    this.questionBundleList = const [],
    this.numberOfQuestions = 0,
    this.expectedTimeInMinutes = 0,
    this.imagePath = "assets/image/question_mark.png",
  });
}