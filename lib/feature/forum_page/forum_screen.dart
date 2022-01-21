import 'package:flutter/material.dart';
import 'package:math_eng_community/core/services/firebase_services.dart';
import 'package:math_eng_community/core/utilities/centered_progress.dart';
import 'components/forum_list.dart';

class ForumScreen extends StatelessWidget {
  const ForumScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Forum Sayfasına Hoşgeldiniz"),
        centerTitle: true,
      ),
      body: StreamBuilder(
        stream: FirebaseServices.user
            .doc(FirebaseServices.auth.currentUser!.email)
            .snapshots(),
        initialData: null,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return !snapshot.hasData
              ? const CenteredProgressIndicator()
              : snapshot.data == null
                  ? const CenteredProgressIndicator()
                  : ForumList(
                      snapshot: snapshot,
                    );
        },
      ),
    );
  }
}
