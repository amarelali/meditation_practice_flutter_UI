import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meditation_app_flutter_ui/Widgets/BackgroundWidget.dart';
import 'package:meditation_app_flutter_ui/Widgets/SearchWidget.dart';
import 'package:meditation_app_flutter_ui/inner_screen/MeditationScreen.dart';
import '../Constants/Consts.dart';
import '../Widgets/Cards.dart';

class AllExercices extends StatelessWidget {
  const AllExercices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> _staticData = [
      {"image": "assets/icons/Hamburger.svg", "title": "Diet Recommandation"},
      {"image": "assets/icons/Exercices.svg", "title": "Kegel Excercises"},
      {
        "image": "assets/icons/Meditation_women_small.svg",
        "title": "Meditation"
      },
      {"image": "assets/icons/yoga.svg", "title": "Yoga"}
    ];
    return Scaffold(
      body: BackgroundWidget(
        backgroundColor: kActiveIconColor.withOpacity(0.4),
        withMenuIcon: true,
        content:
            //Content of
            Padding(
          padding: const EdgeInsets.only(top: 100.0, right: 15, left: 15),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Good Morning\nAmar',
                style: TextStyle(
                  fontSize: 33,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 25),
              const SearchWidget(),
              const SizedBox(height: 20),
              Expanded(
                child: SizedBox(
                  width: double.infinity,
                  child: GridView.count(
                      padding: const EdgeInsets.all(0),
                      crossAxisCount: 2,
                      crossAxisSpacing: 14,
                      mainAxisSpacing: 14,childAspectRatio: (MediaQuery.of(context).size.width/2)/(MediaQuery.of(context).size.height * 0.28),
                      children: [
                        CardsWidgets(
                          IconPath: _staticData[0]["image"]!,
                          title: _staticData[0]["title"]!,
                          fct: () {},
                        ),
                        CardsWidgets(
                          IconPath: _staticData[1]["image"]!,
                          title: _staticData[1]["title"]!,
                          fct: () {},
                        ),
                        CardsWidgets(
                          IconPath: _staticData[2]["image"]!,
                          title: _staticData[2]["title"]!,
                          fct: () {
                            Navigator.pushNamed(
                                context, MeditationScreen.routeName);
                          },
                        ),
                        CardsWidgets(
                          IconPath: _staticData[3]["image"]!,
                          title: _staticData[3]["title"]!,
                          fct: () {},
                        ),
                      ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
