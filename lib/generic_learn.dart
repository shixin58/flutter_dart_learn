import 'package:flutter_dart_learn/oop_learn.dart';

class TestGeneric {
  static start() {
    // 泛型作用：方法参数类型检查
    Cache<String> cache = Cache();
    cache.setItem("url", 'https://www.google.com');
    print(cache.getItem('url'));

    Student stu = Student("太原理工", "石鑫", 20);
    Member<Student> member = Member(stu);
    print(member.fixedName());
  }
}

/// 泛型提高类/接口/方法复用性，支持不确定的类型
class Cache<T> {
  static final Map<String,Object> _cached = Map();

  setItem(String key, T value) {
    _cached[key] = value!;
  }

  T getItem(String key) {
    return _cached[key] as T;
  }
}

/// 约束泛型参数类型
class Member<T extends Person> {
  T _person;
  Member(this._person);

  String fixedName() {
    return 'fixed:${_person.name}';
  }
}