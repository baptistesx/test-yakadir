import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/material.dart';
import 'package:test_yakadir/models/yakadire_card.dart';
import 'package:test_yakadir/pages/home/components/custom_app_bar.dart';
import 'package:test_yakadir/pages/home/components/custom_nav_bar.dart';
import 'package:test_yakadir/pages/home/components/yakadir_card.dart';
import 'package:test_yakadir/theme/themes.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/';

  const HomePage({
    super.key,
  });
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<YakadirCardData> yakadirCards = [
    YakadirCardData(
      labels: [
        Label(
          text: '#maladie 😷',
          textColor: const Color(0xFFA0335A),
          backgroundColor: const Color(0xFFF7EAEE),
        ),
        Label(
          text: '#travail 💼',
          textColor: const Color(0xFFB28837),
          backgroundColor: const Color(0xFFF5EDDA),
        ),
      ],
      question: "La maladie au travail est-elle tabou ?",
      numberOfAnswers: 14,
    ),
    YakadirCardData(
      labels: [
        Label(
          text: '#maladie 😷',
          textColor: const Color(0xFFA0335A),
          backgroundColor: const Color(0xFFF7EAEE),
        ),
        Label(
          text: '#travail 💼',
          textColor: const Color(0xFFB28837),
          backgroundColor: const Color(0xFFF5EDDA),
        ),
      ],
      question: "La maladie au travail est-elle tabou ?",
      numberOfAnswers: 14,
    ),
    YakadirCardData(
      labels: [
        Label(
          text: '#maladie 😷',
          textColor: const Color(0xFFA0335A),
          backgroundColor: const Color(0xFFF7EAEE),
        ),
        Label(
          text: '#travail 💼',
          textColor: const Color(0xFFB28837),
          backgroundColor: const Color(0xFFF5EDDA),
        ),
      ],
      question: "La maladie au travail est-elle tabou ?",
      numberOfAnswers: 14,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
            context.themeColors.backgroundTop,
            context.themeColors.backgroundBottom,
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: const CustomAppBar(),
        body: Center(
            child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.70,
          width: MediaQuery.of(context).size.width,
          child: AppinioSwiper(
              cardsCount: yakadirCards.length,
              cardsBuilder: (BuildContext context, int index) {
                YakadirCardData card = yakadirCards[index];
                return YakadirCard(card: card);
              }),
        )),
        bottomNavigationBar: const CustomNavBar(),
      ),
    );
  }
}
