import 'package:flutter/material.dart';
import 'package:lesson_logging/ui/LogUnit.dart';

Column getBlackBoard(BuildContext context){
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(2.0),
        child: getBlackBoardImage(context),
      ),
    ],
  );
}

Container getBlackBoardImage(BuildContext context){
  return Container(
      width: MediaQuery.of(context).size.width / 2 - 8,
      height: 100,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4.0),
          border: Border.all(color: Colors.black, width: 1.2),
          image: DecorationImage(
              image: NetworkImage("https://picsum.photos/200/100?random"),
              fit: BoxFit.cover)
      )
  );
}

