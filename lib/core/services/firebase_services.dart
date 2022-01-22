import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseServices {
  static final auth = FirebaseAuth.instance;
  static final firestore = FirebaseFirestore.instance;
  static CollectionReference user = firestore.collection("users");
  static CollectionReference forums = firestore.collection("forums");
  snapshot(currentLecture) {
    return forums
        .doc(currentLecture)
        .collection("chats")
        .orderBy("time", descending: true)
        .snapshots();
  }

  Future<bool> uniqUserCheck(String mail) async {
    final result = await user.where('email', isEqualTo: mail).get();
    return result.docs.isEmpty;
  }
}
