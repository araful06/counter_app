import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class ListMapProvider extends ChangeNotifier{

  List<Map<String,dynamic>> _mapData =[];

  void addData ( Map<String,dynamic> data ){

    _mapData.add(data);
    notifyListeners();
  }

  List<Map<String, dynamic>> getData (){
    return _mapData;
  }


}