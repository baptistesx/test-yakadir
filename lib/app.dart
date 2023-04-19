import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_yakadir/route/main_router.dart';
import 'package:test_yakadir/theme/themes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Test Yakadir',
      theme: Provider.of<AppTheme>(context).lightTheme,
      onGenerateRoute: MainRouter.generateRoute,
    );
  }
}
