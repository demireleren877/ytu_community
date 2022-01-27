import 'package:math_eng_community/feature/foodlist/constants.dart';
import 'package:mobx/mobx.dart';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart' as parser;
part 'food_viewmodel.g.dart';

class FoodVM = _FoodVMBase with _$FoodVM;

abstract class _FoodVMBase with Store {
  @observable
  String? lunchMenu;

  @observable
  String? dinnerMenu;

  Future getFoods() async {
    var res = await http.get(Uri.parse(FoodConstants.getFoodUrl));
    final body = res.body;
    final document = parser.parse(body);
    document.getElementsByClassName("one_lunchMainMenu").forEach((element) {
      lunchMenu = element.text;
    });
    document.getElementsByClassName("one_dinnerMainMenu").forEach((element) {
      dinnerMenu = element.text;
    });
  }
}
