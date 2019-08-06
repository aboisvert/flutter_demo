import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:flutter_trainning/scopemodel/scoped_button.dart';
import 'package:flutter_trainning/scopemodel/service_locator.dart';


class ButtonSection extends StatelessWidget{



  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    ServiceLocator locator=ServiceLocator.getServiceLocator();
    ScopedButtonSection scopedButtonSection=locator<ScopedButtonSection>();
    return ScopedModel<ScopedButtonSection>(
        model: scopedButtonSection,
        child:  ScopedModelDescendant<ScopedButtonSection>(
            builder: (context, child, model) {
              return Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buildButtonColumn(()=>scopedButtonSection.onClickCall(context),color, Icons.call, scopedButtonSection.textCall),
                        buildButtonColumn(()=>scopedButtonSection.onClickRoute(context),color, Icons.near_me, 'ROUTE'),
                        buildButtonColumn(()=>scopedButtonSection.onClickCall(context),color, Icons.share, 'SHARE'),
                      ]
                  )
              );
            }

        )
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