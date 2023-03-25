// 面向对象的编程技巧
// 封装(功能模块/类/方法/代码块)，继承，多态(重载和覆写)

main() {
  List? list;
  print(list?.length??0);

  list = [];
  list.add(0);
  list.add('');
  list.add(null);
  if([0,'',null].contains(list[0])) {
    print('list[0] is empty');
  }
}