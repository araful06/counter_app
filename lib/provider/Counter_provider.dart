import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class CounterProvider extends ChangeNotifier{

  int _count = 0;


   int getCount () => _count;

  void incrimentCount (){

    if(  _count<10){
      _count++;
      notifyListeners();
    }

  }
  void dicreementCount (){
    if(_count >0 ){
      _count--;
      notifyListeners();
    }

  }

}