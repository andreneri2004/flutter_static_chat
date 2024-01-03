import 'package:flutter/material.dart';

class MessageFielBox extends StatelessWidget {
  const MessageFielBox({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    final outlineInputBorder = UnderlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(15));

    var inputDecoration = InputDecoration(
      hintText: 'Digite sua mensagem',
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      filled: true,
      suffixIcon: IconButton(
        onPressed: () {
          print('Tocou no botão');
        },
        icon: const Icon(Icons.send_outlined),
      ),
    );
    return TextFormField(
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        // referere-se ao entegr
        print('Submit Value $value');
      },
      onChanged: (value) {
        print('Changed: $value');
      },
    );
  }
}
