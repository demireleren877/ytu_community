import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseServices {
  static final auth = FirebaseAuth.instance;
  static final firestore = FirebaseFirestore.instance;
  static CollectionReference user = firestore.collection("users");
  static CollectionReference forums = firestore.collection("forums");
}
