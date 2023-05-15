import 'package:flutter/material.dart';

const colorList = <Color> 
[
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.deepPurple,
  Colors.orange

];

class AppTheme
{
  final int selectedColor;

  AppTheme
  (
    {
      this.selectedColor = 0
    }
  ) : assert
  (
   selectedColor >= 0 , 'SELECTED EL MEJOR COLOR'
  )
  , assert (
   selectedColor < colorList.length , 'El color va ser distinto'
  )
  ;

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: 
     colorList[
      selectedColor ],
  );
}