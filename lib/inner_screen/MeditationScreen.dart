import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app_flutter_ui/Widgets/BackgroundWidget.dart';
import '../Constants/Consts.dart';
import '../Widgets/SearchWidget.dart';
import '../Widgets/SessionsWidget.dart';

class MeditationScreen extends StatelessWidget {
  static const routeName = '/MeditationScreen';

  const MeditationScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> list =[{"nameOfSession":"Session 1","isLocked":false},{"nameOfSession":"Session 2","isLocked":true},{"nameOfSession":"Session 3","isLocked":true},{"nameOfSession":"Session 4","isLocked":true},{"nameOfSession":"Session 5","isLocked":true},{"nameOfSession":"Session 6","isLocked":true},];

    return Scaffold(
      body: BackgroundWidget(
        backgroundColor: kBlueLightColor,
        withMenuIcon: false,
        content: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Positioned(
                top: 90,
                right: 0,
                child: SvgPicture.asset(
                  'assets/icons/yoga_women.svg',
                  // width: MediaQuery.of(context).size.width *0.2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100.0, left: 15),
                child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Meditation',
                        style: TextStyle(
                          fontSize: 33,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text('3-10 MIN Course',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.6,
                        child: const Text(
                          'Live happier and healthier by learning the fundamentals of meditation and minfulness',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.55,
                          child: const SearchWidget()),
                      const SizedBox(height: 50),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.3,
                            child: GridView.count(
                              padding: EdgeInsets.all(0),
                              crossAxisCount: 2,
                              mainAxisSpacing: 15,
                              crossAxisSpacing: 15,
                              childAspectRatio:
                                  (MediaQuery.of(context).size.width *
                                      0.4 /
                                      55),
                              shrinkWrap: false,
                              physics: const NeverScrollableScrollPhysics(),
                              children: List.generate(
                                  6, (index) => SessionsWidget(isLocked: list[index]['isLocked'],titleSession: list[index]['nameOfSession'],)),
                            )),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text('Meditation',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.1,
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: SvgPicture.asset(
                                  'assets/icons/Meditation_women_small.svg'),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                              const Text('Basic 2',style: TextStyle(fontSize: 17),),
                              const SizedBox(height: 5,),
                              const Text('Start your deepen you practice'),
                            ]),
                            const SizedBox(width: 10,),
                            const Icon(Icons.lock_outline_rounded)
                          ]),
                          decoration: BoxDecoration(color : Colors.white,borderRadius: BorderRadius.circular(15),boxShadow: [
                            BoxShadow(
                              color: Colors.white12,
                              spreadRadius: 4,
                              blurRadius: 10,
                              offset: Offset(3, 4), // changes position of shadow
                            ),
                          ],),
                        ),
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
