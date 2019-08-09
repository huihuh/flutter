import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Counter with ChangeNotifier{
   int _count = 0;
   int get count => _count;
   
   increment() {
     this._count ++;
     notifyListeners(); //更新状态
   }

}