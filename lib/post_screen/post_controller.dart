import 'package:arti_practicle/utils/config_packages.dart';

class PostController extends GetxController {
  List<String> tagList = [
    '#2023',
    '#TODAYISMONDAY',
    '#TOP',
    '#POPS!',
    '#WOW',
    '#ROW'
  ];
  RxInt current = 0.obs;
  List<String> sliderList = [
    'https://wjddnjs754.cafe24.com/web/product/small/202303/5b9279582db2a92beb8db29fa1512ee9.jpg',
    'https://wjddnjs754.cafe24.com/web/product/small/202303/5b9279582db2a92beb8db29fa1512ee9.jpg',
    'https://wjddnjs754.cafe24.com/web/product/small/202303/5b9279582db2a92beb8db29fa1512ee9.jpg',
    'https://wjddnjs754.cafe24.com/web/product/small/202303/5b9279582db2a92beb8db29fa1512ee9.jpg',
    'https://wjddnjs754.cafe24.com/web/product/small/202303/5b9279582db2a92beb8db29fa1512ee9.jpg',
    'https://wjddnjs754.cafe24.com/web/product/small/202303/5b9279582db2a92beb8db29fa1512ee9.jpg'
  ];

  Map<String, dynamic> commentList = {
    "name": '안녕 나 응애',
    "img":AppImages.profile,
    "content":
        "어머 제가 있던 테이블이 제일 반응이 좋았나보네요🤭  우짤래미님도 아시겠지만 저도 일반인 몸매 그 이상도 이하도 아니잖아요?! 그런 제가 기꺼이 도전해봤는데 생각보다 괜찮았어요! 오늘 중으로 라이브 리뷰 올라온다고 하니 꼭 봐주세용~!",
    "subComment": [
      {"name": 'ㅇㅅㅇ', "img":AppImages.subProfile, "content": "오 대박! 라이브 리뷰 오늘 올라온대요? 챙겨봐야겠다"}
    ]
  };
}
