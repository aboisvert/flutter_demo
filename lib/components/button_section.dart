import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_trainning/scopemodel/scoped_title.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:flutter_trainning/scopemodel/scoped_button.dart';


class ButtonSection extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    return ScopedModelDescendant<ScopedTitleSection>(
      builder: (context, child, titleSection) {
        return ScopedModel<ScopedButtonSection>(
          model: new ScopedButtonSection(titleSection),
          child: ScopedModelDescendant<ScopedButtonSection>(
              builder: (context, child, model) {
                return Container(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          buildButtonColumn(()=>model.onClickCall(context),color, Icons.call, model.textCall),
                          buildButtonColumn(()=>model.onClickRoute(context),color, Icons.near_me, 'ROUTE'),
                          buildButtonColumn(()=>model.onClickCall(context),color, Icons.share, 'SHARE'),
                        ]
                    )
                );
              }
            )
        );
      }
    );
  }

}


Column buildButtonColumn(VoidCallback callback, Color color, IconData icon, String label) {
  return
    Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Icon(icon, color: color),
          color: Colors.red[500],
          onPressed:callback,
        ),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
}