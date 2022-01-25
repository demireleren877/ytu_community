import 'package:flutter/material.dart';
import 'package:math_eng_community/core/services/firebase_services.dart';
import 'package:math_eng_community/core/utilities/centered_progress.dart';
import 'package:math_eng_community/feature/chat_room/viewmodel/chat_viewmodel.dart';
import 'components/input_field.dart';
import 'components/message_card.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key, this.currentLecture, this.currentUser})
      : super(key: key);
  final String? currentLecture;
  final String? currentUser;

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final ChatVM _chatVM = ChatVM();
  final TextEditingController _messageController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("asset/images/chat_bg.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: _buildAppBar(context),
          body: _buildBody(),
        ),
      ),
    );
  }

  Column _buildBody() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Expanded(
          child: StreamBuilder(
            stream: FirebaseServices().forumSnapshots(widget.currentLecture),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              return !snapshot.hasData
                  ? const CenteredProgressIndicator()
                  : snapshot.data == null
                      ? const CenteredProgressIndicator()
                      : ListView.builder(
                          controller: _scrollController,
                          itemCount: snapshot.data.docs.length,
                          physics: const BouncingScrollPhysics(),
                          reverse: true,
                          itemBuilder: (context, index) {
                            return MessageCard(
                              index: index,
                              snapshot: snapshot,
                              isMe: _chatVM.isByMe(snapshot, index),
                            );
                          },
                        );
            },
          ),
        ),
        InputField(
          context: context,
          messageController: _messageController,
          chatVM: _chatVM,
          scrollController: _scrollController,
          widget: widget,
        ),
      ],
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromRGBO(269, 155, 195, 100),
      centerTitle: true,
      title: Text(
        widget.currentLecture.toString(),
      ),
    );
  }
}
