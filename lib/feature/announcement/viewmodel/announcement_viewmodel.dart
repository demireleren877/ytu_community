import 'package:math_eng_community/feature/announcement/constants.dart';
import 'package:mobx/mobx.dart';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart' as parser;
part 'announcement_viewmodel.g.dart';

class AnnouncementVM = _AnnouncementVMBase with _$AnnouncementVM;

abstract class _AnnouncementVMBase with Store {
  @observable
  ObservableList<String>? announcementTitles = ObservableList.of([]);

  @observable
  ObservableList<String>? announcementLinks = ObservableList.of([]);

  @action
  Future getAnnouncements() async {
    var res = await http.get(Uri.parse(AnnounceConstants.announcementUrl));
    final body = res.body;
    final document = parser.parse(body);
    document
        .getElementsByClassName("col-sm-12 col-md-9 col-xs-12 col-lg-9")[0]
        .getElementsByClassName("news-item")
        .forEach((element) {
      announcementTitles!.add(element.children[0].children[0].text);
      announcementLinks!.add(element.children[0].attributes["href"]!);
    });
  }
}
