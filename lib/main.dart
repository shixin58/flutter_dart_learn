import 'package:flutter/material.dart';
import 'package:flutter_dart_learn/data_type.dart';
import 'package:flutter_dart_learn/function_learn.dart';
import 'package:flutter_dart_learn/generic_learn.dart';
import 'package:flutter_dart_learn/oop_learn.dart';

/// 入口方法
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // _oopLearn();
    // _functionLearn();
    _genericLearn();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            // const DataType(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }

  void _oopLearn() {
    print('----_oopLearn----');
    Logger log1 = Logger();
    Logger log2 = Logger();
    print(log1 == log2);

    Student.doPrint('China');
    Student stu1 = Student('清华', 'Max', 16);
    stu1.school = '211';
    print('stu1:$stu1');

    Student stu2 = Student('北大', 'Lili', 15, city: 'New York', country: 'USA');
    print('stu2:$stu2');

    Student stu3 = Student.cover(stu2);
    print('stu3:$stu3');
    print('${stu2.hashCode} ${stu3.hashCode}');
    Student stu4 = Student.stu(stu2);
    print('stu4:$stu4');

    StudyFlutter studyFlutter = StudyFlutter();
    studyFlutter.learn();
  }

  void _functionLearn() {
    TestFunction.start();
  }

  void _genericLearn() {
    TestGeneric.start();
  }
}
