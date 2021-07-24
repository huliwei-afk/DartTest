void main(){
  //void类型
  void printName(String name){
    print('name is $name');
  }


  //Dart不需要输入function关键字 简洁
  String getPers(String name , int age){
    return name + "${age}";
  }

  //也可以更简洁，返回值都不用写
  //Dart不支持重载
  getPeople(String name, int age, String type){
    return name + "${age}" + "${type}";
  }

  //继续简洁1，括号也不写
  getP(String name , int age) => name + "$age";
//------------------------------------------------------------------------------

  //可选命名参数
  coffeeFlavor(sugar: true, milk: true);

  //可选参数参数
  getPerson('王') ;

  getPerson('王', 12 );

  getPerson('王', 12, '男');

  //默认参数
  String result = go('Beijing');
  print(result);


  //匿名函数
  var list = ['张无忌','风青杨','张三丰','独孤'];
  list.forEach((i) {
    print(list.indexOf(i).toString() + ':' + i);
  });

}

//可选命名
coffeeFlavor({bool? milk, bool? sugar}){

}

//可选位置
getPerson(String name,  [int? age, String? gender]){
  print ("name = $name, age = $age, gender = $gender");

}

//默认参数值
String go(String to, [String who = 'me']){
  var result = 'go to the $to';
  if(who != null){
    result = '$result with $who';
  }
  return result;
}