import 'package:team_d/models/question_model/question_model.dart';
import 'package:team_d/models/result_model/result_model.dart';
import 'package:team_d/models/test_selection_model/test_selection_item.dart';

class TestSelectionModel{
  List<TestSelectionItem> mentalTestList = [
    TestSelectionItem(
      questionBundleList: QuestionModel().depressionQuestionBundleList,
      questionTitle: '우울증 테스트',
      resultItemList: ResultModel().depressionResultItems,
      expectedTimeInMinutes: 5,
      numberOfQuestions: QuestionModel().depressionQuestionBundleList.length,
    ),
    TestSelectionItem(
        questionBundleList: QuestionModel().empathyQuestionBundleList,
        resultItemList: ResultModel().empathyResultItems,
        questionTitle: '공감능력 테스트',
        expectedTimeInMinutes: 3,
        numberOfQuestions: QuestionModel().empathyQuestionBundleList.length,

    ),
  ];
  List<TestSelectionItem> bodyTestList = [
    TestSelectionItem(
      questionTitle: '건강나이 테스트',
      resultItemList: ResultModel().empathyResultItems,
      questionBundleList: QuestionModel().healthAgeQuestionBundleList,
      imagePath: 'assets/image/start_screen_image.png',
      expectedTimeInMinutes: 7,
      numberOfQuestions: QuestionModel().healthAgeQuestionBundleList.length,
    ),
    TestSelectionItem(
      questionTitle: '적록색약 테스트',
      questionBundleList: QuestionModel().redGreenColorQuestionBundleList,
      expectedTimeInMinutes: 5,
      numberOfQuestions: QuestionModel().redGreenColorQuestionBundleList.length,
    ),
  ];
}