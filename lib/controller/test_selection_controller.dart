import 'package:flutter/material.dart';
import 'package:team_d/models/test_selection_model/test_selection_item.dart';
import 'package:team_d/models/test_selection_model/test_selection_model.dart';

class TestSelectionController with ChangeNotifier {
  List<TestSelectionItem> mentalTestItemList = TestSelectionModel().mentalTestList;
  List<TestSelectionItem> bodyTestItemList = TestSelectionModel().bodyTestList;
  int presentQuestionBundelIndex = 0;

  void setIndex (int index){
    print('set');
    presentQuestionBundelIndex = index;
    print(presentQuestionBundelIndex);
    notifyListeners();
  }
  int getIndex (){
    print('get');
    print(presentQuestionBundelIndex);
    return presentQuestionBundelIndex;
  }
}