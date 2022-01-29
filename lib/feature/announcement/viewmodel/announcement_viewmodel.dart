import 'package:mobx/mobx.dart';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart' as parser;
part 'announcement_viewmodel.g.dart';

class AnnouncementVM = _AnnouncementVMBase with _$AnnouncementVM;

abstract class _AnnouncementVMBase with Store {
  @observable
  ObservableList<String> announcements = ObservableList.of([]);

  @action
  Future getAnnouncement() async {
    var res =
        await http.get(Uri.parse("http://www.mtm.yildiz.edu.tr/duyurular"));
    final body = res.body;
    final document = parser.parse(body);
    var response = document
        .getElementsByClassName("col-sm-12 col-md-9 col-xs-12 col-lg-9")[0]
        .getElementsByClassName("news-item")
        .forEach((element) {
      announcements.add(element.children[0].children[0].text);
    });
  }
}
