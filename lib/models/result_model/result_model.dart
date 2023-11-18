
import 'package:team_d/models/result_model/result_item.dart';

class ResultModel{
  List<ResultItem> healthAgeResultItems = [
    ResultItem(
        resultText: "당신의 건강나이가 마치 고대 유물처럼 보물상자에서 발견된 것 같네요! 실제 나이보다 훨씬 높아서 소파에서 일어나는 것도 대업처럼 느껴질 거예요.",
        imagePath: 'assets/image/result_-2.png',
        resultRating: -2.0
    ),
    ResultItem(
      resultText: "오! 당신의 건강나이가 실제 나이보다 조금 더 많이 나왔네요. 멀지 않은 과거에서 오셨나요? 남북 전쟁에 참전하셨던 것은 아니죠?",
      imagePath: 'assets/image/result_-1.png',
      resultRating: -1.0
    ),
    ResultItem(
        resultText: "현재 우리나라 대통령의 이름을 말하라고 하면 정확하게 말씀하실거 같은 나이이시군요! 이제 다음 대통령의 이름도 알아가 보는 것이 어떨까요?",
        imagePath: 'assets/image/result_0.png',
        resultRating: 0.0
    ),
    ResultItem(
        resultText: "건강나이 결과가 나왔어요: 당신은 소개팅에서 나이를 속일 수 있는 면책 특권을 얻었습니다!실제 나이를 밝히면 '타이핑 실수'라고 해명해야 할지도 몰라요!",
        imagePath: 'assets/image/result_1.png',
        resultRating: 1.0
    ),
    ResultItem(
        resultText: "놀라워라, 당신은 분명 건강의 마법사세요! 어쩌면 젊음의 엘릭서라도 발견한 것은 아닐까요? 당신의 비결을 우리와 공유해주시면, 모두가 당신처럼 '시간을 거스르는' 건강을 얻을 수 있을 거예요!",
        imagePath: 'assets/image/result_2.png',
        resultRating: 2.0
    ),
  ];
  List<ResultItem> empathyResultItems = [
    ResultItem(
        resultText: "당신의 공감 수치는 %%점입니다.\n모든 사람에게 따뜻한 당신은 핫팩! ",
        imagePath: 'assets/image/result_-2.png', //핫팩 이미지
        resultRating: 84
    ),
    ResultItem(
        resultText: "당신의 공감 수치는 %%점입니다.\n 따뜻하면서 가끔은 딱딱한 당신은 군밤!",
        imagePath: 'assets/image/result_-1.png',
        resultRating: 62
    ),
    ResultItem(
        resultText: "당신의 공감 수치는 %%점입니다.\n 차갑기도 하고 따뜻하기도한 당신은 추위 속 군고구마!",
        imagePath: 'assets/image/result_0.png',
        resultRating: 48
    ),
    ResultItem(
        resultText: "당신의 공감 수치는 %%점입니다.\n 따뜻함과 차가움이 공존하는 당신은 샤베트",
        imagePath: 'assets/image/result_1.png',
        resultRating: 36
    ),
    ResultItem(
        resultText: "당신의 공감 수치는 %%점입니다.\n 언제 어디서나 차가운 당신은 얼죽아!",
        imagePath: 'assets/image/result_1.png',
        resultRating: 36
    ),
  ];
  List<ResultItem> redGreenColorResultItems = [
    ResultItem(
        resultText: "적녹 색약자",
        imagePath: 'assets/image/result_-2.png',
        resultRating: 20000 // 20000점 이상
    ),
    ResultItem(
        resultText: "적녹색맹",
        imagePath: 'assets/image/result_-1.png',
        resultRating: 2000 // 2000점 이상 8000점 이하
    ),
    ResultItem(
        resultText: "색각이상",
        imagePath: 'assets/image/result_0.png',
        resultRating: 100 // 100점 이상 800점 이하
    ),
    ResultItem(
        resultText: "전색맹자",
        imagePath: 'assets/image/result_1.png',
        resultRating: 1 // 1점 이상 8점 이하
    ),
    ResultItem(
        resultText: "정상",
        imagePath: 'assets/image/result_1.png',
        resultRating: 0 // 정상
    ),
  ];
}