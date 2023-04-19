import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:test_yakadir/blocs/test/test.dart';
import 'package:test_yakadir/repositories/test/test.dart';
import 'package:test_yakadir/services/logger.dart';
import 'package:test_yakadir/theme/themes.dart';

import 'app.dart';

void main() {
  runApp(
    MultiBlocProvider(
        providers: <BlocProvider<dynamic>>[
          BlocProvider<TestBloc>(
            create: (BuildContext context) =>
                TestBloc(TestRepository(logger: Logger()), Logger()),
          ),
        ],
        child: MultiProvider(providers: [
          Provider<AppTheme>(
            create: (BuildContext context) => AppTheme(),
          ),
        ], child: const MyApp())),
  );
}
