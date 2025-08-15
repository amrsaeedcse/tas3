import 'package:flutter/cupertino.dart';
import 'package:task/models/movie_model.dart';

class FavController extends ChangeNotifier {
  List<MovieModel> favList = [];

  void addToList(MovieModel model) {
    favList.add(model);
    notifyListeners();
  }

  void removeByRef(MovieModel model) {
    favList.remove(model);
    notifyListeners();
  }
}
