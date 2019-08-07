
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
class ScopedGingerApp extends Model {
  String urlImageHeader='images/lake.jpg';
  void onCall(BuildContext context,Model scopedModel,String action){
      showAlertDialog(context, action);
  }

  void changeUrlImage(String url){
    urlImageHeader=url;
    notifyListeners();
  }

  showAlertDialog(BuildContext context,String action) {

    // set up the button
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () { Navigator.of(context).pop("Ok");},
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("My title"),
      content: Text("This is my message from "+action),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}