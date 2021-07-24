void main(){
  var message = new StringBuffer("张无忌");
  for(var i = 0; i < 3; i++){
    message.write('!');
  }
  print(message);

  //除了标准for还有for in
  var list = ['张无忌','风青杨','张三丰','独孤'];
  for(var l in list){
    print(l);
  }

  //switch
  //dart中的switch用"=="比较整型，字符串，编译时常量
  //被比较的对象必须是同一个类的实例，并且这个类不能复写"=="
  //枚举类型很适合在switch里使用
  String today = "Friday";
  switch(today){
    case 'Monday':
      print("周一");
      break;
    case 'Friday':
      print("周五");
      break;
  }
}