import 'package:scoped_model/scoped_model.dart';
import 'package:flutter_trainning/scopemodel/scoped_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ScopedButtonSection extends Model {
  String textCall = "Call";
  ScopedTitleSection titleSection;

  ScopedButtonSection(this.titleSection);
  
  void onClickCall(BuildContext context){
    textCall = (textCall == "Call") ? "Call Click" : "Call";
    notifyListeners();
  }

  void onClickRoute(BuildContext context){
    titleSection.setTitle("You have click on Call");
  }

}