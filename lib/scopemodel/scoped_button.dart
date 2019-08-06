import 'package:scoped_model/scoped_model.dart';
import 'package:flutter_trainning/scopemodel/service_locator.dart';
import 'package:flutter_trainning/scopemodel/scoped_ginger_app.dart';
import 'package:flutter_trainning/scopemodel/scoped_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ScopedButtonSection extends Model {
  String textCall="Call";

  void onClickCall(BuildContext context){
//     locator<ScopedGingerApp>().showAlertDialog(context, "Calll");
    //locator<ScopedTitleSection>().setTitle("You have click on Call");
    if(textCall=="Call"){
      textCall="Call Click";
    }else{
      textCall="Call";
    }
    notifyListeners();
  }

  void onClickRoute(BuildContext context){

    //locator<ScopedTitleSection>().setTitle("You have click on Call");

  }

}