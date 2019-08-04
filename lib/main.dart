import 'package:flutter/material.dart';
import 'package:flutter_trainning/ginger_app.dart';
import 'package:flutter_trainning/scopemodel/service_locator.dart';

void main() {
  // setup locator
  setupLocator();
  runApp(
      MaterialApp(
          title: 'GingerApp',
          home: GingerApp()
      )
  );
}


