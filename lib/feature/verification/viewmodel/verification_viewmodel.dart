import 'package:math_eng_community/feature/verification/constants.dart';
import 'package:mobx/mobx.dart';
part 'verification_viewmodel.g.dart';

class VerificationVM = _VerificationVMBase with _$VerificationVM;

abstract class _VerificationVMBase with Store {
  @observable
  String lottiePath = VerificationConstants.nonVerifiedLottie;

  @action
  void changePath() {
    lottiePath = VerificationConstants.verifiedLottie;
  }
}
