import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'components/title_section.dart';
import 'components/button_section.dart';
import 'components/text_section.dart';
import 'scopemodel/scoped_ginger_app.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:flutter_trainning/scopemodel/service_locator.dart';

class GingerApp extends StatefulWidget {
  const GingerApp({Key key, this.title}) : super(key: key);
  final String title;

  @override
  GingerAppState createState() => GingerAppState();
}

class GingerAppState extends State<GingerApp> {
  ServiceLocator locator=ServiceLocator.getServiceLocator();
  @override
  Widget build(BuildContext context) {
    return new ScopedModel<ScopedGingerApp>(
        model: locator<ScopedGingerApp>(),
        child: new Scaffold(
            body: new Container(
          decoration: new BoxDecoration(color: Colors.white),
          child: new ListView(children: <Widget>[
            Image.asset(
              'images/lake.jpg',
              fit: BoxFit.cover,
            ),
            TitleSection(),
            ButtonSection(),
            textSection
          ]),
        )));
  }
}
