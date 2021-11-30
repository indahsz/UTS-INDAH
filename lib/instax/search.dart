import "package:flutter/material.dart";
import "productmodel.dart";

class SearchInterval with ChangeNotifier {
  final List<ProductModel> listProduct;

  SearchInterval(this.listProduct) {
    searchControl.addListener(() {
      if (searchControl.text.isNotEmpty) {
        search = true;
      }
    });
  }

  bool _search = false;
  FocusNode _focusNode = FocusNode();
  TextEditingController _searchControl = TextEditingController();
  List<ProductModel> _searchResult = [];

  bool get search => _search;

  set search(bool newValue) {
    _search = newValue;
    notifyListeners();
  }

  FocusNode get focusNode => _focusNode;

  set focusNode(FocusNode newValue) {
    _focusNode = newValue;
    notifyListeners();
  }

  TextEditingController get searchControl => _searchControl;

  set searchControl(TextEditingController newValue) {
    _searchControl = newValue;
    notifyListeners();
  }

  List<ProductModel> get searchResult => _searchResult;

  set searchResult(List<ProductModel> newValue) {
    _searchResult = newValue;
    notifyListeners();
  }

  Icon get iconSearch {
    if (search) {
      return const Icon(
        Icons.close,
        color: Colors.white,
      );
    } else {
      return const Icon(
        Icons.search,
        color: Colors.white,
      );
    }
  }

  void searchOperation(String searchText) {
    searchResult.clear();
    if (searchText.isNotEmpty) {
      search = true;
      for (int i = 0; i < listProduct.length; i++) {
        ProductModel data = listProduct[i];
        if (data.name!.toLowerCase().contains(searchText.toLowerCase())) {
          searchResult.add(data);
        }
      }
    } else {
      searchResult.clear();
      search = false;
    }
  }
}
