import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_trainning/view/favorite_section.dart';

import 'package:scoped_model/scoped_model.dart';
import 'package:flutter_trainning/scopemodel/scoped_title.dart';
import 'package:flutter_trainning/scopemodel/service_locator.dart';


class TitleSection extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return ScopedModel<ScopedTitleSection>(
      model: locator<ScopedTitleSection>(),
      child: Container(
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
                      child: Text(
                        'Oeschinen Lake Campground',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      'Kandersteg, Switzerland',
                      style: TextStyle(
                        color: Colors.grey[500],
                      ),
                    ),
                  ],
                ),
              ),
              /*3*/
              FavoriteWidget()
            ],
          )
      )
    );
  }
}

