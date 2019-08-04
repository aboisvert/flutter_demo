import 'package:scoped_model/scoped_model.dart';
import 'package:flutter_trainning/scopemodel/service_locator.dart';
import 'package:flutter_trainning/scopemodel/scoped_ginger_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ScopedButtonSection extends Model {

   void onClickCall(BuildContext context){
     locator<ScopedGingerApp>().showAlertDialog(context, "Calll");
  }

  void onRouteClick(){

  }
}