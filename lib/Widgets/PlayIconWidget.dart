import 'package:flutter/material.dart';
import '../Constants/Consts.dart';
class PlayIconWidget extends StatelessWidget {
  const PlayIconWidget({Key? key,this.isLocked = true}) : super(key: key);
  final bool isLocked;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(Icons.play_arrow,color: isLocked ?   kBlueColor : Colors.white ),
      ),
      decoration: BoxDecoration(color : isLocked ? Colors.white : kBlueColor   ,border: Border.all(color: kBlueColor,width: 2),borderRadius: BorderRadius.circular(50),)

    );
  }
}
