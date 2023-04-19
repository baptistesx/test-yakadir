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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          SizedBox(
            height: 29,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(),
              child: const Text('Annuler'),
            ),
          )
        ],
      ),
      body: const Center(
        child: Text('WrittingPage'),
      ),
    );
  }
}
