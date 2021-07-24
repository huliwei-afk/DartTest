//内置库，使用'dart:'引入
// import 'dart:io';

//三方库，使用'package:'引入
//import 'package:DartTest/src/control.dart';

//指定库前缀，若library1与libarary2都有一个名为Element的类
/*
 import 'package:lib1/lib1.dart;
 import 'package:lib2/lib2.dart as lib2;

 Element element1 = new Element();
 lib2.Element element2 = new lib2.Element();
 */

//导入库的一部分，选择需要导入的部分，show / hide
/*
  //只导入一部分 foo
  import 'package:lib1/lib1.dart' show foo

  //除了foo都导入
  import 'package:lib2/lib2.dart' hide foo
 */


//延迟加载库，用于减少app启动时间，执行测试等
/*
  import 'package:deferred/hello.dart' deferred as hello

  需要使用时再load
  greet() async{
    await hello.loadLibrary();
    hello.printGreeting();
  }

 */