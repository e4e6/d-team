import 'package:team_d/models/question_model/question_model.dart';
import 'package:team_d/models/test_selection_model/test_selection_item.dart';

class TestSelectionModel{
  List<TestSelectionItem> testSelectionItemList = [
    TestSelectionItem(
      questionTitle: '건강나이 테스트',
      questionBundleList: QuestionModel().healthAgeQuestionBundleList,
      imagePath: 'assets/image/start_screen_image.png',
      expectedTimeInMinutes: 10,
      numberOfQuestions: 10,
    ),
    TestSelectionItem(
      questionBundleList: QuestionModel().depressionQuestionBundleList,
      questionTitle: '우울증 테스트',
      expectedTimeInMinutes: 10,
      numberOfQuestions: 10
    ),
  ];
}