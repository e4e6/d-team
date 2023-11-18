import 'package:flutter/material.dart';
import 'package:team_d/models/question_model/question_bundle_item.dart';
import 'package:team_d/models/question_model/question_item.dart';
import 'package:team_d/models/result_model/result_item.dart';
import 'package:team_d/models/result_model/result_model.dart';

class ResultController with ChangeNotifier{
  double score = 0.0;
  int index = 0;
  List<ResultItem> resultList = ResultModel().healthAgeResultItems;

  void setScore({required List<QuestionBundleItem>questionBundleList}){
    double _newScore = 0.0;
    for (int i=0; i<questionBundleList.length; i++) {
      _newScore += questionBundleList[i].initialScore;
      for (int j = 0; j < questionBundleList[i].questionList.length; j++) {
        List<QuestionItem> questionList = questionBundleList[i].questionList;
        if (questionList[j].isChecked == true) _newScore += questionList[j].score;
      }
    }
    score = _newScore;
    notifyListeners();
  }

  void setIndex({required double score}){
    for (int i=0; i<resultList.length;i++ )
      if(score >= resultList[i].maxRating&& score<resultList[i].minRating ) index = i;
    notifyListeners();
  }
}