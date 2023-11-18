import 'package:team_d/models/question_model/question_bundle_item.dart';
import 'package:team_d/models/question_model/question_item.dart';

class QuestionModel{
  List<QuestionBundleItem> healthAgeQuestionBundleList = [
    QuestionBundleItem(
      questionTitle: '식생활',
      imagePath: 'assets/image/diet.png',
      isMultipleSelectionsAllowed: true,
      initialScore: 4,
      questionList: [
        QuestionItem(
          questionText:
          '항상 싱겁게 먹는다(보통 사람은 소금을 더 쳐서 먹는 정도를 말함).',
          score: -2.0,
        ),
        QuestionItem(
          questionText: '신선한 과일이나 채소를 끼니마다 먹는다.',
          score: -2.0,
        ),
        QuestionItem(
          questionText: '검게 태운 음식을 먹지 않는다.',
          score: -2.0,
        ),
        QuestionItem(
          questionText: '식사를 규칙적으로 먹는다.',
          score: -2.0,
        ),
        QuestionItem(
          questionText: '간식을 먹지 않는다.',
          score: -2.0,
        ),
        QuestionItem(
          questionText:
          '해당 사항 없음',
          score: 0,
        ),
      ],
    ),
    QuestionBundleItem(
      questionTitle: '운동',
      imagePath: 'assets/image/exercise.png',
      questionList: [
        QuestionItem(
          questionText: '일주일에 3회 이상, 한 번에 30분 이상 운동한다.',
          score: -2.0,
        ),
        QuestionItem(
          questionText: '일주일에 3회 이상, 한 번에 30분 이상 운동하지 않는다.',
          score: 0.0,
        ),
        QuestionItem(
          questionText: '운동을 전혀 하지 않거나 월 3회 미만 한다.',
          score: 2.0,
        ),
      ],
    ),
    QuestionBundleItem(
      questionTitle: '흡연',
      imagePath: 'assets/image/smoking.png',
      questionList: [
        QuestionItem(
          questionText: '전혀 피운 적이 없거나 10년 전에 끊었다.',
          score: 0.0,
        ),
        QuestionItem(
          questionText: '5 년 전에 끊었다.',
          score: 0.5,
        ),
        QuestionItem(
          questionText: '1개월~5년 사이 끊었다.',
          score: 1.0,
        ),
        QuestionItem(
          questionText: '하루 1갑 미만으로 피운다.',
          score: 3.0,
        ),
        QuestionItem(
          questionText: '하루 1갑 이상 피운다.',
          score: 5.0,
        ),
      ],
    ),
    QuestionBundleItem(
      questionTitle: '음주',
      imagePath: 'assets/image/alcohol_consumption.png',
      questionList: [
        QuestionItem(
          questionText: '전혀 마시지 않는다.',
          score: 0.0,
        ),
        QuestionItem(
          questionText: '횟수와 관계없이 소주 반 병 이하로 마신다.',
          score: -1.0,
        ),
        QuestionItem(
          questionText: '일주일에 1번 소주 한 병 정도 마신다.',
          score: 1.0,
        ),
        QuestionItem(
          questionText: '일주일에 2~3회이고 한 번에 소주 1병 이상 마신다.',
          score: 2.0,
        ),
        QuestionItem(
          questionText: '일주일에 4회 이상, 한 번에 소주 1병 이상 마신다.',
          score: 4.0,
        ),
      ],
    ),
    QuestionBundleItem(
      questionTitle: '스트레스',
      imagePath: 'assets/image/stress.png',
      isMultipleSelectionsAllowed: true,
      initialScore: -2,
      questionList: [
        QuestionItem(
          questionText:
          '지난 한 달간 정신적으로 감당하기 힘든 스트레스를 겪은 적이 있다.',
          score: 1.0,
        ),
        QuestionItem(
          questionText:
          '지난 한 달간 자신의 신념에 따라 살아가는데 어려움을 느낀 적이 있다.',
          score: 1.0,
        ),
        QuestionItem(
          questionText:
          '지난 한 달간 인간답게 살아가는데 부족함이 있다고 느낀 적이 있다.',
          score: 1.0,
        ),
        QuestionItem(
          questionText:
          '지난 한 달간 자신의 미래에 대해 불안함을 느낀 적이 있다.',
          score: 1.0,
        ),
        QuestionItem(
          questionText:
          '지난 한 달간 자신의 업무에 치우쳐 중요한 일들을 잊은 적이 있다.',
          score: 1.0,
        ),
        QuestionItem(
          questionText:
          '해당 사항 없음',
          score: 0,
        ),
      ],
    ),
    QuestionBundleItem(
      questionTitle: '연간 여행거리 / 위험한 직업',
      imagePath: 'assets/image/annual_travel_distance_risky_jobs.png',
      questionList: [
        QuestionItem(
          questionText:
          '서울~부산 거리의 10배 이하 / 일이 위험하지 않다.',
          score: -1.0,
        ),
        QuestionItem(
          questionText:
          '서울~부산 거리의 10배~19배 정도 / 일이 약간 위험하다.',
          score: 1.0,
        ),
        QuestionItem(
          questionText:
          '서울~부산 거리의 20배 이상 / 일이 위험하고 사고 가능성이 항상 있다.',
          score: 2.0,
        ),
      ],
    ),
    QuestionBundleItem(
      questionTitle: '운전 및 안전습관',
      imagePath: 'assets/image/driving_safety_habits.png',
      questionList: [
        QuestionItem(
          questionText:
          '안전벨트를 항상 착용하고, 무슨 일을 할 때마다 안전에 주의한다.',
          score: -1.0,
        ),
        QuestionItem(
          questionText:
          '안전벨트를 항상 착용하지만, 무슨 일을 할 때마다 안전에 주의하지 않는다.',
          score: 0.0,
        ),
        QuestionItem(
          questionText:
          '안전벨트를 항상 착용하지 않고, 무슨 일을 할 때마다 안전에 주의하지 않는다.',
          score: 1.0,
        ),
      ],
    ),
    QuestionBundleItem(
      questionTitle: '건강검진',
      imagePath: 'assets/image/health_checkup.png',
      questionList: [
        QuestionItem(
          questionText: '5년에 1회 이상 건강검진을 받는다.',
          score: 0.0,
        ),
        QuestionItem(
          questionText: '2 년에 1회 이상 건강검진을 받는다.',
          score: -2.0,
        ),
        QuestionItem(
          questionText: '전혀 건강검진을 받지 않는다.',
          score: 2.0,
        ),
      ],
    ),
    QuestionBundleItem(
      questionTitle: 'B형 간염 바이러스 보균자', //일부로 이렇게 적음 (보유자->보균자) 인터넷 찾아봤더니 비슷한 건강설문에서 보균자로 표기하지 않아서 헷갈리는 사례가 꽤 있었음
      imagePath: 'assets/image/hepatitis_b_virus_carrier.png',
      questionList: [
        QuestionItem(
          questionText: '그렇다.',
          score: 3.0,
        ),
        QuestionItem(
          questionText: '아니다.',
          score: 0.0,
        ),
        QuestionItem(
          questionText: '모른다.',
          score: 1.0,
        ),
      ],
    ),
    QuestionBundleItem(
      questionTitle: '비만도',
      imagePath: 'assets/image/obesity.png',
      questionList: [
        QuestionItem(
          questionText: '표준체중(이상 체중의 90~110%).',
          score: -1.0,
        ),
        QuestionItem(
          questionText: '과체중 혹은 저체중(이상 체중의 110~119%/80~90%).',
          score: 1.0,
        ),
        QuestionItem(
          questionText: '경도 비만 혹은 경도 저체중(이상 체중의 120~129%/75~80%).',
          score: 2.0,
        ),
        QuestionItem(
          questionText: '고도 비만 혹은 고도 저체중(이상 체중의 130% 이상/74% 이하).',
          score: 3.0,
        ),
      ],
    ),
  ];
  List<QuestionBundleItem> depressionQuestionBundleList = [
    QuestionBundleItem(
      questionTitle: '기분이 우울하거나 좌절감을 느끼십니까?',
      imagePath: 'assets/image/question_mark.png',
      isMultipleSelectionsAllowed: true,
      initialScore: 4,
      questionList: [
        QuestionItem(
          questionText:
          '1일 미만',
          score: 1.0,
        ),
        QuestionItem(
          questionText: '1~2일',
          score: 1.0,
        ),
        QuestionItem(
          questionText: '3~4일',
          score: 3.0,
        ),
        QuestionItem(
          questionText: '5~7일',
          score: 4,
        ),
        QuestionItem(
          questionText: '2주 이상 거의 매일',
          score: 5,
        ),
      ],
    ),
    QuestionBundleItem(
      questionTitle: '흥미나 즐거움을 느끼는 것에 관심이 없으십니까?',
      imagePath: 'assets/image/question_mark.png',
      isMultipleSelectionsAllowed: true,
      initialScore: 4,
      questionList: [
        QuestionItem(
          questionText:
          '1일 미만',
          score: 1.0,
        ),
        QuestionItem(
          questionText: '1~2일',
          score: 1.0,
        ),
        QuestionItem(
          questionText: '3~4일',
          score: 3.0,
        ),
        QuestionItem(
          questionText: '5~7일',
          score: 4,
        ),
        QuestionItem(
          questionText: '2주 이상 거의 매일',
          score: 5,
        ),
      ],
    ),
    QuestionBundleItem(
      questionTitle: '에너지 수준이 낮아져 일상적인 활동을 수행하기 어렵습니까?',
      imagePath: 'assets/image/question_mark.png',
      isMultipleSelectionsAllowed: true,
      initialScore: 4,
      questionList: [
        QuestionItem(
          questionText:
          '1일 미만',
          score: 1.0,
        ),
        QuestionItem(
          questionText: '1~2일',
          score: 1.0,
        ),
        QuestionItem(
          questionText: '3~4일',
          score: 3.0,
        ),
        QuestionItem(
          questionText: '5~7일',
          score: 4,
        ),
        QuestionItem(
          questionText: '2주 이상 거의 매일',
          score: 5,
        ),
      ],
    ),
    QuestionBundleItem(
      questionTitle: '수면 패턴이 변화하거나 잠을 자기 어렵습니까?',
      imagePath: 'assets/image/question_mark.png',
      isMultipleSelectionsAllowed: true,
      initialScore: 4,
      questionList: [
        QuestionItem(
          questionText:
          '1일 미만',
          score: 1.0,
        ),
        QuestionItem(
          questionText: '1~2일',
          score: 1.0,
        ),
        QuestionItem(
          questionText: '3~4일',
          score: 3.0,
        ),
        QuestionItem(
          questionText: '5~7일',
          score: 4,
        ),
        QuestionItem(
          questionText: '2주 이상 거의 매일',
          score: 5,
        ),
      ],
    ),
    QuestionBundleItem(
      questionTitle: '자신을 비난하거나 자책하는 경향이 있습니까?',
      imagePath: 'assets/image/question_mark.png',
      isMultipleSelectionsAllowed: true,
      initialScore: 4,
      questionList: [
        QuestionItem(
          questionText:
          '1일 미만',
          score: 1.0,
        ),
        QuestionItem(
          questionText: '1~2일',
          score: 1.0,
        ),
        QuestionItem(
          questionText: '3~4일',
          score: 3.0,
        ),
        QuestionItem(
          questionText: '5~7일',
          score: 4,
        ),
        QuestionItem(
          questionText: '2주 이상 거의 매일',
          score: 5,
        ),
      ],
    ),
    QuestionBundleItem(
      questionTitle: '집중력이 떨어져 일상적인 작업을 수행하기 어렵습니까?',
      imagePath: 'assets/image/question_mark.png',
      isMultipleSelectionsAllowed: true,
      initialScore: 4,
      questionList: [
        QuestionItem(
          questionText:
          '1일 미만',
          score: 1.0,
        ),
        QuestionItem(
          questionText: '1~2일',
          score: 1.0,
        ),
        QuestionItem(
          questionText: '3~4일',
          score: 3.0,
        ),
        QuestionItem(
          questionText: '5~7일',
          score: 4,
        ),
        QuestionItem(
          questionText: '2주 이상 거의 매일',
          score: 5,
        ),
      ],
    ),
    QuestionBundleItem(
      questionTitle: '식욕이 변화하여 식사량이 감소하거나 증가하였습니까?',
      imagePath: 'assets/image/question_mark.png',
      isMultipleSelectionsAllowed: true,
      initialScore: 4,
      questionList: [
        QuestionItem(
          questionText:
          '1일 미만',
          score: 1.0,
        ),
        QuestionItem(
          questionText: '1~2일',
          score: 1.0,
        ),
        QuestionItem(
          questionText: '3~4일',
          score: 3.0,
        ),
        QuestionItem(
          questionText: '5~7일',
          score: 4,
        ),
        QuestionItem(
          questionText: '2주 이상 거의 매일',
          score: 5,
        ),
      ],
    ),
    QuestionBundleItem(
      questionTitle: '자신에 대한 무관심이나 무기력한 느낌이 있습니까?',
      imagePath: 'assets/image/question_mark.png',
      isMultipleSelectionsAllowed: true,
      initialScore: 4,
      questionList: [
        QuestionItem(
          questionText:
          '1일 미만',
          score: 1.0,
        ),
        QuestionItem(
          questionText: '1~2일',
          score: 1.0,
        ),
        QuestionItem(
          questionText: '3~4일',
          score: 3.0,
        ),
        QuestionItem(
          questionText: '5~7일',
          score: 4,
        ),
        QuestionItem(
          questionText: '2주 이상 거의 매일',
          score: 5,
        ),
      ],
    ),
    QuestionBundleItem(
      questionTitle: '자살이나 죽음에 대한 생각이 있습니까?',
      imagePath: 'assets/image/question_mark.png',
      isMultipleSelectionsAllowed: true,
      initialScore: 4,
      questionList: [
        QuestionItem(
          questionText:
          '1일 미만',
          score: 1.0,
        ),
        QuestionItem(
          questionText: '1~2일',
          score: 1.0,
        ),
        QuestionItem(
          questionText: '3~4일',
          score: 3.0,
        ),
        QuestionItem(
          questionText: '5~7일',
          score: 4,
        ),
        QuestionItem(
          questionText: '2주 이상 거의 매일',
          score: 5,
        ),
      ],
    ),
    QuestionBundleItem(
      questionTitle: '사회적 상호작용이 감소하였습니까?',
      imagePath: 'assets/image/question_mark.png',
      isMultipleSelectionsAllowed: true,
      initialScore: 4,
      questionList: [
        QuestionItem(
          questionText:
          '1일 미만',
          score: 1.0,
        ),
        QuestionItem(
          questionText: '1~2일',
          score: 1.0,
        ),
        QuestionItem(
          questionText: '3~4일',
          score: 3.0,
        ),
        QuestionItem(
          questionText: '5~7일',
          score: 4,
        ),
        QuestionItem(
          questionText: '2주 이상 거의 매일',
          score: 5,
        ),
      ],
    ),
  ];
  List<QuestionBundleItem> empathyQuestionBundleList = [
    QuestionBundleItem(
      questionTitle: 'Q1. 더 좋아하는 영화는 ',
      isMultipleSelectionsAllowed: false,
      initialScore: 50,
      questionList: [
        QuestionItem(
          questionText:'1. 마음을 움직이는 영화',
          score: 6,
        ),
        QuestionItem(
          questionText: '2. 뇌를 자극하는 영화',
          score: -5,
        )
      ],
    ),
    QuestionBundleItem(
      questionTitle: 'Q2. 예상치 못한 상황이 벌어진다면',
      isMultipleSelectionsAllowed: false,
      initialScore: 0,
      questionList: [
        QuestionItem(
          questionText:'1. 생각을 잠시 멈추고 플랜 ABCD를 생각한다.',
          score: -4,
        ),
        QuestionItem(
          questionText: '2. 생각나는 것 부터 하나하나 시도한다.',
          score: 5,
        )
      ],
    ),
    QuestionBundleItem(
      questionTitle: 'Q3. 어느 날, 갑자기 인간의 감정이 삭제되었다. 감정을 느낄 수 없는 세상이 온다면 나는',
      isMultipleSelectionsAllowed: false,
      initialScore: 0,
      questionList: [
        QuestionItem(
          questionText:'1. 감정 때문에 피곤하지도 않고 오히려 좋은 것 아닌가?',
          score: -7,
        ),
        QuestionItem(
          questionText: '2. 안돼.. 감정을 느낄 수 없으면 너무 삭막하잖아...',
          score: 5,
        )
      ],
    ),
    QuestionBundleItem(
      questionTitle: 'Q4. 시험을 망쳤을 때 더 위로되는 말은',
      isMultipleSelectionsAllowed: false,
      initialScore: 0,
      questionList: [
        QuestionItem(
          questionText:'1. 야 나도 망했어 ㅠㅠ 이번에 진짜 어려웠어',
          score: 3,
        ),
        QuestionItem(
          questionText: '2. 이번 시험이 어려웠네, 너 원래 잘하잖아!',
          score: -1,
        )
      ],
    ),
    QuestionBundleItem(
      questionTitle: 'Q5. 지갑을 잃어버렸을 때 나는',
      isMultipleSelectionsAllowed: false,
      initialScore: 0,
      questionList: [
        QuestionItem(
          questionText:'1. 지갑 속 가족, 친구들과 찍은 사진이 없어져서 슬프다',
          score: 5,
        ),
        QuestionItem(
          questionText: '2. 민증, 카드 등 재발급을 받아야 할 일이 피곤하다.',
          score: -4,
        )
      ],
    ),
    QuestionBundleItem(
      questionTitle: 'Q6. 학창 시절, 내가 더 잘 풀었던 문제는',
      isMultipleSelectionsAllowed: false,
      initialScore: 0,
      questionList: [
        QuestionItem(
          questionText:'1. 화자의 의도를 파악하시오.',
          score: 4,
        ),
        QuestionItem(
          questionText: '2. 인수분해를 이용하여 다음을 계산하시오.',
          score: -3,
        )
      ],
    ),
    QuestionBundleItem(
      questionTitle: 'Q7. 시험을 망쳤을 때 더 위로되는 말은',
      isMultipleSelectionsAllowed: false,
      initialScore: 0,
      questionList: [
        QuestionItem(
          questionText:'1. 야 나도 망했어 ㅠㅠ 이번에 진짜 어려웠어.',
          score: 3,
        ),
        QuestionItem(
          questionText: '2. 이번 시험이 어려웠네, 너 원래 잘하잖아!',
          score: -2,
        )
      ],
    ),
    QuestionBundleItem(
      questionTitle: 'Q8. 힘들 때, 나에게 더 힘이 되어주는 친구는?',
      isMultipleSelectionsAllowed: false,
      initialScore: 0,
      questionList: [
        QuestionItem(
          questionText:'1. 위로와 격려를 해주는 친구',
          score: 4,
        ),
        QuestionItem(
          questionText: '2. 조언과 방향성을 제시해주는 친구',
          score: -3,
        )
      ],
    ),
    QuestionBundleItem(
      questionTitle: 'Q9. 내 생각 흐름의 종착지는?',
      isMultipleSelectionsAllowed: false,
      initialScore: 0,
      questionList: [
        QuestionItem(
          questionText:'1. ? 물음표인 경우가 많다.',
          score: 0,
        ),
        QuestionItem(
          questionText: '2. ! 느낌표인 경우가 많다.',
          score: 0,
        )
      ],
    ),
    QuestionBundleItem(
      questionTitle: 'Q10. 남들이 보는 나는?',
      isMultipleSelectionsAllowed: false,
      initialScore: 0,
      questionList: [
        QuestionItem(
          questionText:'1. 강인하고 공정한 사람',
          score: -4,
        ),
        QuestionItem(
          questionText: '2. 온화하고 상냥한 사람',
          score:5,
        )
      ],
    ),
    QuestionBundleItem(
      questionTitle: 'Q11. 인스타 스토리 DM은',
      isMultipleSelectionsAllowed: false,
      initialScore: 0,
      questionList: [
        QuestionItem(
          questionText:'1. 팔로우 된 관계라면 누구에게든 보낼 수 있다.',
          score:3,
        ),
        QuestionItem(
          questionText: '2. 진짜 친한 사람한테만 보낼 수 있다.',
          score: -2,
        )
      ],
    ),
    QuestionBundleItem(
      questionTitle: 'Q12. 친구가 연애 상담을 한다면',
      isMultipleSelectionsAllowed: false,
      initialScore: 0,
      questionList: [
        QuestionItem(
          questionText:'1. 마음은 이해되는데,, 어떻게 위로해야할지 모르겠다.',
          score: -4,
        ),
        QuestionItem(
          questionText: '2. 그 맘 잘 알지,,  친구한테 이입하다보니 눈물이 고인다.',
          score: 5,
        )
      ],
    ),
  ];
  List<QuestionBundleItem> redGreenColorQuestionBundleList = [
    QuestionBundleItem(
      questionTitle: 'Q1.어떤 숫자가 보이는지 고르시오. ',
      isMultipleSelectionsAllowed: false,
      imagePath: 'assets/image/15.png',
      initialScore: 0,
      questionList: [
        QuestionItem(
          questionText:'17',  //적녹색약
          score: 10000,
        ),
        QuestionItem(
          questionText:'숫자가 없음', //적녹색맹
          score: 1000,
        ),
        QuestionItem(
          questionText: '15', //정상
          score: 0,
        )
      ],
    ),
    QuestionBundleItem(
      questionTitle: 'Q2.어떤 숫자가 보이는지 고르시오.',
      isMultipleSelectionsAllowed: false,
      imagePath: 'assets/image/74.png',
      initialScore: 0,
      questionList: [
        QuestionItem(
          questionText:'74',  //정상
          score: 0,
        ),
        QuestionItem(
          questionText:'숫자가 없음',  //전색맹자
          score: 1,
        ),
        QuestionItem(
          questionText: '21', //적녹생맹
          score: 1000,
        )
      ],
    ),
    QuestionBundleItem(
      questionTitle: 'Q3.어떤 숫자가 보이는지 고르시오.',
      isMultipleSelectionsAllowed: false,
      imagePath: 'assets/image/8.png',
      initialScore: 0,
      questionList: [
        QuestionItem(
          questionText:'8',  //정상
          score: 0,
        ),
        QuestionItem(
          questionText: '숫자가 없음',  //적녹색맹
          score: 1000,
        ),
        QuestionItem(
          questionText:'3',  //적녹색약
          score: 10000,
        ),
      ],
    ),
    QuestionBundleItem(
      questionTitle: 'Q4.어떤 숫자가 보이는지 고르시오.',
      isMultipleSelectionsAllowed: false,
      imagePath: 'assets/image/97.png',
      initialScore: 0,
      questionList: [
        QuestionItem(
          questionText:'숫자가 없음', //색각이상
          score: 100,
        ),
        QuestionItem(
          questionText: '97',  //정상
          score: 0,
        )
      ],
    ),
    QuestionBundleItem(
      questionTitle: 'Q5.어떤 숫자가 보이는지 고르시오.',
      isMultipleSelectionsAllowed: false,
      imagePath: 'assets/image/12.png',
      initialScore: 0,
      questionList: [
        QuestionItem(
          questionText:'12', //정상인 혹은 색각 이상자
          score: 0,
        ),
        QuestionItem(
          questionText: '그 외 아무 숫자',  //이게 나오면 안됨..
          score: -3,
        )
      ],
    ),
    QuestionBundleItem(
      questionTitle: 'Q6.어떤 숫자가 보이는지 고르시오.',
      isMultipleSelectionsAllowed: false,
      imagePath: 'assets/image/26.png',
      initialScore: 0,
      questionList: [
        QuestionItem(
          questionText:'6', //적녹색맹
          score: 1000,
        ),
        QuestionItem(
          questionText:'2', //적녹색맹
          score: 1000,
        ),
        QuestionItem(
          questionText: '26', //정상
          score: 0,
        )
      ],
    ),
    QuestionBundleItem(
      questionTitle: 'Q7.어떤 숫자가 보이는지 고르시오.',
      isMultipleSelectionsAllowed: false,
      imagePath: 'assets/image/5.png',
      initialScore: 0,
      questionList: [
        QuestionItem(
          questionText:'숫자가 없음',  //전색맹자
          score: 1,
        ),
        QuestionItem(
          questionText:'5', //정상
          score: 0,
        ),
        QuestionItem(
          questionText: '2',  //적녹색맹
          score: 1000,
        )
      ],
    ),
  ];
}