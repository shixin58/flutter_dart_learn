class TestFunction {
  static start() {
    FunctionLearn functionLearn = FunctionLearn();
    print(functionLearn.sum(3, 2));
    functionLearn.anonymousFunction();
  }
}

/// 方法构成：返回值类型(可缺省)，方法名(匿名方法)，参数
/// 返回值类型可缺省，匿名方法不需要方法名，参数类型可缺省
class FunctionLearn {
  int sum(int val1, int val2) {
    return val1 + val2;
  }

  /// 私有方法：作用域是当前文件。以下划线开头，类似类和属性。
  _learn() {
    print('_learn');
  }

  anonymousFunction() {
    var list = ['私有方法', '匿名方法'];
    // forEach传入一个匿名方法，有时候也称为lambda或closure
    list.forEach((element) {
      print('${list.indexOf(element)}:$element');
    });
  }
}