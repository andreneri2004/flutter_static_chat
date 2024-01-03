import 'package:flutter/material.dart';
import 'package:yes_no_app/src/screens/chat/chat_screen.dart';
import 'package:yes_no_app/src/configs/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(index: 0).getTheme(),
      title: 'Material App',
      home: const ChatScreen(),
    );
  }
}
