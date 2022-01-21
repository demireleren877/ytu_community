import 'package:math_eng_community/core/services/firebase_services.dart';
import 'package:mobx/mobx.dart';
part 'chat_viewmodel.g.dart';

class ChatVM = _ChatVMBase with _$ChatVM;

abstract class _ChatVMBase with Store {
  @action
  sendMessage(
      messageController, scrollController, currentUser, currentLecture) {
    if (messageController.text.isNotEmpty) {
      Map<String, dynamic> messageMap = {
        "message": messageController.text,
        "senderID": FirebaseServices.auth.currentUser!.email,
        "senderId": currentUser,
        "time": DateTime.now().millisecondsSinceEpoch.toString(),
      };
      FirebaseServices.firestore
          .collection("forums")
          .doc(currentLecture)
          .collection("chats")
          .add(messageMap);
      messageController.text = "";
      scrollController.jumpTo(scrollController.position.maxScrollExtent);
    }
    scrollController.jumpTo(0.0);
  }

  @action
  bool isByMe(snapshot, index) {
    if (snapshot.data.docs[index].data()["senderID"] ==
        FirebaseServices.auth.currentUser!.email) {
      return true;
    } else {
      return false;
    }
  }
}
