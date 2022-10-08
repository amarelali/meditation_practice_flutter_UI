import 'package:flutter/material.dart';

import 'PlayIconWidget.dart';
class SessionsWidget extends StatelessWidget {
  const SessionsWidget({Key? key,required this.titleSession, required this.isLocked}) : super(key: key);
  final String titleSession;
  final bool isLocked;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      height: 55,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            PlayIconWidget(isLocked: isLocked),
            const SizedBox(width: 10),
            Text(
              titleSession,
            ),
          ],
        ),
      ),
    );
  }
}
