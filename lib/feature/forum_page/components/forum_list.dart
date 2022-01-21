import 'package:flutter/material.dart';

import 'forum_card.dart';

class ForumList extends StatelessWidget {
  const ForumList({
    Key? key,
    required this.snapshot,
  }) : super(key: key);

  final AsyncSnapshot<dynamic> snapshot;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: snapshot.data.data()["takenLectures"].length,
      itemBuilder: (BuildContext context, int index) {
        return ForumCard(index: index, snapshot: snapshot);
      },
    );
  }
}
