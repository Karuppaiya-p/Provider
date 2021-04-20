import 'package:flutter/cupertino.dart';

class TextFontSize with ChangeNotifier{

  double fontsize;
  TextFontSize({this.fontsize});
  double get getFontSize{
    return this.fontsize;
  }
  void set setFontSize(double value){
    this.fontsize=value;
    notifyListeners();
  }
}