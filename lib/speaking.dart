import 'package:flutter/material.dart';

class SpeakingPage extends StatefulWidget {
  static const String routeName = '/speaking';

  const SpeakingPage({super.key});

  @override
  State<SpeakingPage> createState() => _SpeakingPageState();
}

class _SpeakingPageState extends State<SpeakingPage> {
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
        child: Text('SpeakingPage'),
      ),
    );
  }
}
