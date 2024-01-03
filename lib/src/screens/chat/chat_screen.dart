import 'package:flutter/material.dart';
import 'package:yes_no_app/src/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/src/widgets/chat/other_message_bubble.dart';
import 'package:yes_no_app/src/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Atendimentos SRA 🧑🏽‍💻'),
        centerTitle: false,
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://www.saude.ba.gov.br/wp-content/uploads/2023/01/MARCA_GOVERNO_DO_ESTADO_BAHIA-_SESAB-Versao-Vertical-com-Box-04.png'),
          ),
        ),
      ),
      body: const _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(children: [
          Expanded(
              child: ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index) {
              return (index % 2 == 0)
                  ? const MyMessageBubble()
                  : const OtherMessageBubble();
            },
          )),
          const MessageFielBox()
        ]),
      ),
    );
  }
}
