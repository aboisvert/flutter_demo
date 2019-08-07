import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:scoped_model/scoped_model.dart';

import 'package:flutter_trainning/scopemodel/scoped_title.dart';

class TitleSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new ScopedModelDescendant<ScopedTitleSection>(
      builder: (context, child, titleSectionModel) {
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
                            titleSectionModel.onClickTitle();
                          },
                          child: Text(
                            '${titleSectionModel.titleModel.title}',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ),
                      ),
                      Text(
                        '${titleSectionModel.titleModel.description}',
                        style: TextStyle(
                          color: Colors.grey[500],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
        );
      }
    );
  }
}
