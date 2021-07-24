void main(){

  //和JS有点像 万物继承Object 一切初始化都是null 没有具体的数据类型
  var a;
  print(a);   // 打印 a 的值，显示为 null

  a = 10;
  print(a);   //  打印出来的结果为 10

  a = "测试字符串";
  print(a);   // 打印出来的结果为 测试字符串

  a = 30;
  print(a);   //  打印出来的结果为 30

  //final 要求变量只能初始化一次，并不要求赋的值一定是编译时常量，可以是常量也可以不是。
  final b = 10;
  //b = 20;  这个会报错，有提示： [dart] 'b', a final variable, can only be set once.


  //const 要求在声明时初始化，并且赋值必需为编译时常量。
  const c  = 10;
  //c = 20;  这里也会报错：[dart] Constant variables can't be assigned a value.
//------------------------------------------------------------------------------

  //Dart 有几种内置的数据类型
  //数值型-Number、布尔型-boolean、键值对-Map、字符串-String、列表-List、其他类型-Runes、Symbols
  //数值型运算符: +, -, * , /, ~/, %

  //num类型分为int和double
  num i = 10.1;
  i = 10;
  print(i ~/ 3); //答案是3 这个运算符可取整
  print(i.isNaN);

  int d = 10;
  print(d / 4); //答案是2.5，这个运算符可以保留小数
  //判断奇偶性，num类型用不了isOdd/isEven
  print(d.isOdd);
  print(d.isEven);
  //d = 10.1;    这个地方会报错，因为将 int 型的数据改为 double 型

  double e = 20.1;
  //e = 20;        这个地方会报错，因为将 double 型的数据改为 int 型
//------------------------------------------------------------------------------

  // String -> int
  var one = int.parse('1');
  assert(one == 1);

  // String -> double
  var onePointOne = double.parse('1.1');
  assert(onePointOne == 1.1);

  // int -> String
  String oneAsString = 1.toString();
  assert(oneAsString == '1');

  // double -> String
  String piAsString = 3.14159.toStringAsFixed(2);
  assert(piAsString == '3.14');

  //可以使用 单引号 和 双引号 声明字符串
  String string = '单引号声明字符串';
  String string1 = "双引号声明字符串";
  //甚至可以嵌套
  String str = '单引号中的"双引号"';
  String str1 = "双引号中的'单引号'";
  print(str + str1);

  //用三个单引号或双引号创建多行字符串对象
  var s1 = '''
  第一行
  第二行
  ''';

  var s2 = """
  第一行
  第二行
  """;

  //空格拼接
  // 拼接字符串， 输出：单引号空格 或者 双引号空格
  String blockStr = '单引号''空格';
  String blockStr1 = '单引号' '空格';//空格不显示在字符串中仅用于拼接，打印 -> 单引号空格
  String blockStr2 = "双引号""空格";
  String blockStr3 = "双引号" "空格";

  // 下面这两种情况会报错
  // String blockStr4 = '单引号''''空格';
  // String blockStr5 = "双引号""""空格";

  // 测试中间添加字符
  String blockStr6 = '单引号''_''空格';   // 输出：单引号_空格
  String blockStr7 = "双引号""#""空格";   // 注意不能使用 $，$会报错, 输出：单引号#空格

  // 单双引号混合使用
  String blockStr8 = '单""""引号';        // 输出：单""""引号
  String blockStr9 = '单""_""引号';       // 输出：单""_""引号

  // 单双引号混合使用
  String blockStr10 = "双''''引号";        // 输出：双''''引号
  String blockStr11 = "双''_''引号";       // 输出：双''_''引号

  //同样用 $ 拼接
  var flag = false;
  var test = "测试字符串";

  print("我们来验证字符串：${test}" "然后看看我们的 flag：${flag}");
  // 最后输出的结果为：我们来验证字符串：测试字符串然后看看我们的 flag：false
//------------------------------------------------------------------------------

  //assert断言，结果错误时会终止程序
  // 检查是否为空
  var fullName = '';
  assert(fullName.isEmpty);

  // 为0检查
  var hitPoints = 0;
  assert(hitPoints <= 0);

  // 检查是否为 null.
  var unicorn;
  assert(unicorn == null);

  // 检查是否为 NaN.
  var iMeantToDoThis = 0 / 0;
  assert(iMeantToDoThis.isNaN);
//------------------------------------------------------------------------------

  //集合
  //  在数组中可以存放多个不同类型的对象
  var list = [1, 2, 3, 'Flutter', true];
  print(list);      // 输出的结果：[1, 2, 3, Flutter, true]

  // 修改数组下标为2 的值
  list[2] = 'Dart';
  print(list);      // 输出的结果：[1, 2, Dart, Flutter, true]

  // 获取数组的长度
  print(list.length);   // 输出的结果：5

  // 向数组中添加元素
  list.add("value");
  print(list);        // 输出的结果：[1, 2, Dart, Flutter, true, value]

  // 向数组中的指定位置添加元素
  list.insert(1, 'element');
  print(list);      // 输出的结果：[1, element, 2, Dart, Flutter, true, value]

  // 移除数组中的元素
  list.remove("value");
  print(list);      // 输出的结果：[1, element, 2, Dart, Flutter, true]

  // 移除数组中指定的元素
  list.removeAt(1);
  print(list);      // 输出的结果：[1, 2, Dart, Flutter, true]

  // 判断数组中是否有某个元素
  print(list.indexOf("element"));   // 输出结果：-1，即不存在

  // 可以使用 sort() 函数来排序, 但是由于我们上面定义的数组类型不一样，就不能使用
  // 所以定义一个int数组
  var intlist = [1, 2, 5, 6 ,3];

  // 根据语法提示： List.sort([(int, int) → int compare]) → void
  intlist.sort( (a, b) => a.compareTo(b) );
  print(intlist);   // 输出结果：[1, 2, 3, 5, 6]
//------------------------------------------------------------------------------

  //map集合
  var map = {'first': 'dart', 'second': 'java'};

  //不可变map 加入const
  final constLanguage = const {'first': 'dart', 'second': 'java'};

  //构造器创建
  var initLanguage = new Map();
  // 获取长度
  print(map.length);    // 输出结果：2

  // 判断是否为空
  print(map.isEmpty);     // 输出结果：false
  print(map.isNotEmpty);  // 输出结果：true

  // 获取到所有的 key
  print(map.keys);        // 输出结果：(fisrt, second)

  // 获取到所有的 values
  print(map.values);      // 输出结果：(dart, java)

  // 判断是否包含某个key
  print(map.containsKey("key"));    // 输出结果：false

  // 判断是否包含某个value
  print(map.containsValue("key"));    // 输出结果：false

  // 添加一个新的元素进去
  map['third'] = 'key';
  print(map);         // 输出结果：{fisrt: dart, second: java, third: key}

  // 循环打印 代码提示：Map.forEach((String, String) → void f) → void
  map.forEach( (key, value) => print("key:${key}, value:${value}") );
//------------------------------------------------------------------------------

  // dynamic关键字 任意类型
  // 编译时不会管定义的数据类型 , 运行时才处理变量的类型
  // 所以编译时会使 Dart 语言的静态语法检查失效
  dynamic m = 1;
  m = "2";
  m = {"list", "str", 1, true};

  //与var的区别
  var n = "str";
  //n = 1; 这里报错

  //这里不报错，k就是dynamic类型 等同于dynamic关键字声明
  //开发时dynamic关键字有很多隐患，但是自由度很高
  var k;
  k = 1;
  k = "str";
//------------------------------------------------------------------------------

  //Set集合
  var hero = ['张无忌','风青杨','张三丰','独孤求败','晓峰'];
  var heros = <String> {};
  heros.addAll(hero);

}


