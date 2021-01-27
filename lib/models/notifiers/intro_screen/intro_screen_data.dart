import 'package:flutter/foundation.dart';

class IntroScreenData extends ChangeNotifier {
  int currentPage = 0;
  List<Map<String, String>> introData = [
    {
      "text": "Welcome to I-Pet,\nLet’s shop!",
      "image": "assets/images/welcome_ipet_bg.png"
    },
    {
      "text": "We help people conect with store \naround All Over the World",
      "image": "assets/images/store_ipet_bg.png"
    },
    {
      "text": "We show the easy way \nto shop.",
      "image": "assets/images/dog_ipet_bg.png"
    },
    {
      "text": "We can let you know about pet places \nin easy way.",
      "image": "assets/images/places_ipet_bg.png"
    },
    {
      "text": "We can let you take care about you pet \nfrom your place.",
      "image": "assets/images/care_ipet_bg.png"
    },
  ];

  int get introCount {
    return introData.length;
  }

  int changeDotSize(int value) {
    notifyListeners();
    return currentPage = value;
  }
}
