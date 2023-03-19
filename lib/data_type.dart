import 'package:flutter/material.dart';

/// 文档注释更简洁, 常用数据类型
class DataType extends StatefulWidget {
  const DataType({Key? key}) : super(key: key);

  @override
  State<DataType> createState() => _DataTypeState();
}

class _DataTypeState extends State<DataType> {
  @override
  Widget build(BuildContext context) {
    _numType();
    _stringType();
    _boolType();
    _listType();
    _mapType();
    _tips();
    return const Text('常用数据类型，请查看控制台输出');
  }

  void _numType() {
    num num1 = -1.0;// num是int和double的父类
    num num2 = 666;
    int int1 = 3;
    double d1 = 3.14;
    print("num: $num1; num: $num2; int: $int1; double: $d1");
    print(num1.abs());
    print(num1.toDouble());
    print(num1.toInt());
  }

  void _stringType() {
    String str1 = "备胎", str2 = "舔狗", str3 = "大冤种";
    String str4 = "$str1 $str2 $str3";
    String str5 = '绿茶' + ' 心机婊' + ' 海王';
    String str6 = '常用数据类型，请查看控制台输出';
    print(str4);
    print(str5);
    print(str6.substring(7, 9));
    print(str6.indexOf('数据'));
    print(str6.startsWith('常用'));
  }

  void _boolType() {
    bool success = true, fail = false;
    print(success);
    print(fail);
    print(success || fail);
    print(success && fail);
  }

  _listType() {
    print('----_listType----');
    List list = [1, 2, 3, '集合'];// List<dynamic>
    print(list);
    List<int> list2 = [];
    List list3 = [];
    list3.add('value');
    list3.insert(0, 'element');
    list3.addAll(list);// Iterable<dynamic>
    print(list3);
    List list4 = List.generate(3, (index) => index * 2);
    print(list4);

    // List遍历方式
    for(int i=0; i<list.length; i++) {
      print(list[i]);
    }
    for(var o in list) {
      print(o);
    }
    list.removeLast();
    list.forEach((element) => print(element));
  }

  _mapType() {
    print('----_mapType----');
    Map fruits = {'Apple': '苹果', 'Banana': '香蕉'};// Map<dynamic, dynamic>
    print(fruits);
    Map prices = {};
    prices['Apple'] = 1.5;
    prices['Banana'] = 2.1;
    print(prices);

    // Map遍历方式
    prices.forEach((key, value) {
      print('$key, $value');
    });
    Map prices2 = prices.map((key, value) {
      return MapEntry(value, key);
    });
    print(prices2);
    prices.removeWhere((key, value) => key=='Banana');
    for(var k in prices.keys) {
      print('$k, ${prices[k]}');
    }
  }

  /// dynamic、var、Object三者区别
  _tips() {
    print('----_tips----');
    // dynamic是动态数据类型，编译期类型检查失败，一般不直接使用
    dynamic x = 'Hall';
    print('${x.runtimeType} $x');
    x = 123;
    print('${x.runtimeType} $x');
    // var编译器推断数据类型
    var y = "Rain";
    print('${y.runtimeType} $y');
    // Object是Dart基类
    Object o1 = 123;
    print('${o1.runtimeType} ${o1.toString()}');
  }
}
