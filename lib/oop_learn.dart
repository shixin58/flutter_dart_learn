class Person {
  String name;
  int age;

  Person(this.name, this.age);

  @override
  String toString() {
    return 'name:$name age:$age';
  }
}

class Student extends Person {
  String _school;
  String? city;
  String country;
  String address;
  // Student(super.name, super.age);
  /// city为可选参数，country为默认参数
  /// 冒号后依次初始化列表和super
  Student(this._school, String name, int age, {this.city,this.country='China'}) : address = '$country.$city',
        super(name, age) {
    print('1、标准构造方法体不是必须的');
  }

  // 定义getter方法
  String get school => _school;

  // 定义setter方法
  set school(String value) {
    _school = value;
  }

  @override
  String toString() {
    return '${super.toString()} school:$_school city:$city country:$country address:$address';
  }

  Student.cover(Student stu) : _school=stu._school, city=stu.city, country=stu.country, address=stu.address,
        super(stu.name, stu.age) {
    print('2、命名构造方法');
  }

  /// 4、命名工厂构造方法：Dart网络请求数据解析，将网络数据解析成Model。
  factory Student.stu(Student stu) {
    return Student(stu._school, stu.name, stu.age);
  }

  /// 静态方法
  static doPrint(String str) {
    print('doPrint:$str');
  }
}

/// 3、工厂构造方法，设计模式，单例
class Logger {
  static Logger? _cache;

  factory Logger() {
    _cache ??= Logger._internal();
    return _cache!;
  }

  Logger._internal();

  /// 实例方法
  void log(String msg) {
    print(msg);
  }
}

abstract class Study {
  void learn();
}

class StudyFlutter extends Study {
  @override
  void learn() {
    print('Learning Flutter');
  }
}

/// mixins无构造方法，不能调用super，只能继承自Object
class Test extends Person with Study {
  Test(super.name, super.age);

  @override
  void learn() {
    // TODO: implement learn
  }
}