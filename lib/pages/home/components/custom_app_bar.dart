import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_yakadir/blocs/Answering/answering.dart';
import 'package:test_yakadir/blocs/Answering/answering_events.dart';
import 'package:test_yakadir/theme/themes.dart';

class CustomAppBar extends StatefulWidget with PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _CustomAppBarState extends State<CustomAppBar> {
  final _swipperController = ValueNotifier<bool>(false);

  bool _writtingMode = false;

  @override
  void initState() {
    super.initState();

    _swipperController.addListener(() {
      setState(() {
        if (_swipperController.value) {
          _writtingMode = true;
          context.read<AnsweringBloc>().add(SwitchToWrittingModeEvent());
        } else {
          _writtingMode = false;
          context.read<AnsweringBloc>().add(SwitchToSpeakingModeEvent());
        }
      });
    });
  }

  @override
  void dispose() {
    _swipperController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Image(
          image: AssetImage(
            'assets/images/logo_yakadir.png',
          ),
          width: 140,
        ),
        centerTitle: false,
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: AdvancedSwitch(
              thumb: Container(
                  decoration: BoxDecoration(
                      color: _swipperController.value
                          ? context.theme.primaryColor
                          : Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Icon(
                    Icons.edit,
                    color: Colors.white,
                    size: 20,
                  )),
              inactiveChild: const Icon(Icons.edit),
              activeColor: Colors.white,
              inactiveColor: Colors.grey.shade700,
              width: 60,
              controller: _swipperController,
            ),
          ),
        ]);
  }
}
