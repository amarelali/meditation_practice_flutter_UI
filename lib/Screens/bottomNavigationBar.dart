import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app_flutter_ui/Screens/AllExcercices.dart';
import 'package:meditation_app_flutter_ui/Screens/HomeScreen.dart';
import '../Constants/Consts.dart';
import 'Settings.dart';

class bottomNavigationBar extends StatefulWidget {
  const bottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<bottomNavigationBar> createState() => _bottomNavigationBarState();
}

class _bottomNavigationBarState extends State<bottomNavigationBar> {
  int _isSelected = 1;

  final List<Map<String, dynamic>> _listOfPage = [
    {"page": const HomePage()},
    {"page": const AllExercices()},
    {"page": const Settings()},
  ];

  void changePage(int index) {
    setState(() {
      _isSelected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _listOfPage[_isSelected]["page"],
      bottomNavigationBar: BottomNavigationBar(
          iconSize: 30,
          selectedFontSize: 13,
          currentIndex: _isSelected,
          unselectedFontSize: 13,
          selectedItemColor: kActiveIconColor,
          unselectedItemColor: kTextColor,
          onTap: changePage,
          elevation: 0,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: SvgPicture.asset('assets/icons/calendar.svg',
                      color: _isSelected == 0 ? kActiveIconColor : kTextColor),
                ),
                label: 'Today'),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: SvgPicture.asset(
                    'assets/icons/gym.svg',
                    color: _isSelected == 1 ? kActiveIconColor : kTextColor,
                  ),
                ),
                label: 'All Exercices'),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.all(6.0),
                child: SvgPicture.asset(
                  'assets/icons/Settings.svg',
                  color: _isSelected == 2 ? kActiveIconColor : kTextColor,
                ),
              ),
              label: 'Settings',
            ),
          ]),
    );
  }
}
