import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardsWidgets extends StatelessWidget {
  const CardsWidgets({Key? key,required this.IconPath, required this.title,required this.fct}) : super(key: key);
  final String IconPath,title;
  final Function fct;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){ fct();},
      child: Container(
        width: MediaQuery.of(context).size.height ,
        height: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Expanded(
                flex: 3, child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SvgPicture.asset(IconPath,height: MediaQuery.of(context).size.height *0.25,),
                )),
            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    title,
                    style: TextStyle(fontSize: 13),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
