import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_trainning/view/favorite_section.dart';

import 'package:scoped_model/scoped_model.dart';
import 'package:flutter_trainning/scopemodel/scoped_title.dart';
import 'package:flutter_trainning/scopemodel/service_locator.dart';
import 'package:flutter_trainning/model/title_model.dart';

class TitleSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    ServiceLocator locator=ServiceLocator.getServiceLocator();
    ScopedTitleSection scopedTitleSection=locator<ScopedTitleSection>();
    return ScopedModel<ScopedTitleSection>(
        model: scopedTitleSection,
        child: ScopedModelDescendant<ScopedTitleSection>(
            builder: (context, child, model) {
              return Container(
                  padding: const EdgeInsets.all(32),
                  child: Row(
                    children: [
                      Expanded(
                        /*1*/
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            /*2*/
                            Container(
                              padding: const EdgeInsets.only(bottom: 8),
                              child: new GestureDetector(
                                onTap: () {
                                  model.onClickTitle();
                                },
                                child: Text(
                                  '${model.titleModel.title}',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ),
                            ),
                            Text(
                              '${model.titleModel.description}',
                              style: TextStyle(
                                color: Colors.grey[500],
                              ),
                            ),
                          ],
                        ),
                      ),
                      /*3*/
                      //FavoriteWidget()
                    ],
                  ));
            }
        )
    );
  }
}
