import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../Constants/Consts.dart';

class BackgroundWidget extends StatelessWidget {
  BackgroundWidget(
      {Key? key,
      required this.withMenuIcon,
      required this.backgroundColor,
      required this.content})
      : super(key: key);
  final bool withMenuIcon;
  final Color backgroundColor;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(fit: StackFit.expand,children: [
        Stack(
          children: [
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.width,
                  color: backgroundColor,
                ),
                Expanded(
                  child: Container(
                    // height: 100 ,
                    color: kBackgroundColor,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 18.0, top: 25),
                  child: withMenuIcon
                      ? Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: kActiveIconColor.withOpacity(0.2),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: SvgPicture.asset(
                                  'assets/icons/menu.svg',
                                ),
                              ),
                            ),
                          ),
                        )
                      : const SizedBox(
                          height: 75,
                        ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: SvgPicture.asset('assets/icons/meditation_bg.svg'),
                ),
              ],
            ),
          ],
        ),
        //content
        content,
      ]),
    );
  }
}
