import 'package:flutter/material.dart';
import 'package:test_yakadir/custom-fonts/yakadir_icons_icons.dart';
import 'package:test_yakadir/models/yakadire_card.dart';
import 'package:test_yakadir/pages/home/components/label_container.dart';
import 'package:test_yakadir/speaking.dart';
import 'package:test_yakadir/theme/themes.dart';

class YakadirCard extends StatelessWidget {
  const YakadirCard({
    Key? key,
    required this.card,
  }) : super(key: key);

  final YakadirCardData card;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 10,
      child: Stack(children: [
        const Positioned(
            bottom: 30,
            right: 5,
            child: Icon(
              YakadirIcons.group,
              size: 150,
              color: Color(0xfff5f5f5),
            )),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Expanded(
                child: Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    alignment: WrapAlignment.start,
                    children: card.labels
                        .map((label) => LabelContainer(
                                label: Label(
                              text: label.text,
                              textColor: label.textColor,
                              backgroundColor: label.backgroundColor,
                            )))
                        .toList()),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    YakadirIcons.share,
                    color: context.theme.primaryColor,
                  ))
            ]),
            const SizedBox(height: 20),
            Text(
              card.question,
              style: const TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Montserrat',
                  color: Color(0xff072D25)),
            ),
            const SizedBox(height: 16),
            Text(
              "${card.numberOfAnswers} personnes ont répondu",
              style: const TextStyle(color: Colors.grey),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  width: 100,
                  height: 100,
                  margin: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color(0xffe4efe3), width: 13),
                    color: context.theme.primaryColor,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    icon: const Icon(
                      Icons.mic,
                      color: Colors.white,
                      size: 40,
                    ),
                    onPressed: () =>
                        {Navigator.pushNamed(context, SpeakingPage.routeName)},
                  ),
                ),
              ),
            )
          ]),
        ),
      ]),
    );
  }
}
