import 'package:flutter/material.dart';
import 'package:twitter_clone/features/auth/views/signup_view.dart';
import 'package:twitter_clone/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.theme,
      home: const SignUpView(),
    );
  }
}
