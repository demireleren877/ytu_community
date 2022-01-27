import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:math_eng_community/core/services/firebase_services.dart';
import 'package:mobx/mobx.dart';
import 'package:uuid/uuid.dart';

import '../../../core/services/firebase_services.dart';
part 'chat_viewmodel.g.dart';

class ChatVM = _ChatVMBase with _$ChatVM;

abstract class _ChatVMBase with Store {
  @observable
  File? imageFile;

  @action
  sendMessage(
      messageController, scrollController, currentUser, currentLecture) {
    if (messageController.text.isNotEmpty) {
      Map<String, dynamic> messageMap = {
        "message": messageController.text,
        "senderID": FirebaseServices.auth.currentUser!.email,
        "senderId": currentUser,
        "type": "text",
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

  @action
  sendImage(currentLecture, currentUser) async {
    ImagePicker _picker = ImagePicker();
    await _picker.pickImage(source: ImageSource.camera).then((xFile) => {
          if (xFile != null)
            {
              imageFile = File(xFile.path),
              uploadImage(currentLecture, currentUser),
            }
        });
  }

  @action
  Future uploadImage(currentLecture, currentUser) async {
    String fileName = const Uuid().v1();

    var ref =
        FirebaseStorage.instance.ref().child("images").child("$fileName.jpg");
    var uploadTask = await ref.putFile(imageFile!).catchError((error) async {});
    String imageUrl = await uploadTask.ref.getDownloadURL();
    await FirebaseServices.forums
        .doc(currentLecture)
        .collection("chats")
        .doc(fileName)
        .set({
      "message": imageUrl,
      "senderID": FirebaseServices.auth.currentUser!.email,
      "senderId": currentUser,
      "type": "img",
      "time": DateTime.now().millisecondsSinceEpoch.toString(),
    });
  }
}
