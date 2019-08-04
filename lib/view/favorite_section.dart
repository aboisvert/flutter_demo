import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:flutter_trainning/scopemodel/scoped_title.dart';


class FavoriteWidget extends StatefulWidget {
  @override
  FavoriteWidgetState createState() => FavoriteWidgetState();
}

class FavoriteWidgetState extends State<FavoriteWidget> {

  bool isFavorited = true;
  int favoriteCount = 41;

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<ScopedTitleSection>(
      builder: (context, child, model) {
        isFavorited=model.titleModel.isFavorite;
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.all(0),
              child: IconButton(
                icon: (isFavorited ? Icon(Icons.star) : Icon(Icons.star_border)),
                color: Colors.red[500],
                onPressed:() => toggleFavorite(model),
              ),
            ),
            SizedBox(
              width: 18,
              child: Container(
                child: Text('$favoriteCount'),
              ),
            ),
          ],
        );
      }
    );
  }


  void toggleFavorite(ScopedTitleSection scopedTitle) {
    setState(() {
      if (isFavorited) {
        favoriteCount -= 1;
        isFavorited = false;
      } else {
        favoriteCount += 1;
        isFavorited = true;
      }
    });
    scopedTitle.titleModel.isFavorite=isFavorited;
  }
}