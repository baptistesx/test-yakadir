import 'package:flutter/material.dart';

class WrittingPage extends StatefulWidget {
  static const String routeName = '/writting';

  const WrittingPage({super.key});

  @override
  State<WrittingPage> createState() => _WrittingPageState();
}

class _WrittingPageState extends State<WrittingPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('WrittingPage'),
    );
  }
}
