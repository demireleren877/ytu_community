import 'package:mobx/mobx.dart';
part 'home_viewmodel.g.dart';

class HomeVM = _HomeVMBase with _$HomeVM;

abstract class _HomeVMBase with Store {
  @observable
  int currentIndex = 0;
}
