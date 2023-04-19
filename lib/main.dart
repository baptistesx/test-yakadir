import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:test_yakadir/blocs/Answering/answering.dart';
import 'package:test_yakadir/blocs/Cards/cards.dart';
import 'package:test_yakadir/repositories/cards/cards.dart';
import 'package:test_yakadir/theme/themes.dart';

import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

// TODO
  // var app = await Firebase.initializeApp(
  //     options: DefaultFirebaseOptions.currentPlatform);

  runApp(
    MultiBlocProvider(
        providers: <BlocProvider<dynamic>>[
          BlocProvider<AnsweringBloc>(
            create: (BuildContext context) => AnsweringBloc(),
          ),
          BlocProvider<CardsBloc>(
            create: (BuildContext context) => CardsBloc(
              CardsRepository(),
            ),
          ),
        ],
        child: MultiProvider(providers: [
          Provider<AppTheme>(
            create: (BuildContext context) => AppTheme(),
          ),
        ], child: const MyApp())),
  );
}
