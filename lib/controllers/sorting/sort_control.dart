import 'package:flutter/cupertino.dart';

class SortByControl extends ChangeNotifier {
  SortBy sortBy = SortBy.all;

  void setSorting(SortBy sort) {
    sortBy = sort;
    notifyListeners();
  }

  /// just for searching
  void refresh() {
    notifyListeners();
  }
}

enum SortBy { all, featured, newPr }
