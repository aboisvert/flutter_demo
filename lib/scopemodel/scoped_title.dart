import 'package:scoped_model/scoped_model.dart';
import 'package:flutter_trainning/model/title_model.dart';

class ScopedTitleSection extends Model {
  TitleModel titleModel = new TitleModel();

  void setTitle(String title) {
    titleModel.title = title;
    notifyListeners();
  }

  void onClickTitle() {
    setTitle("Hammmmmm");
  }
}