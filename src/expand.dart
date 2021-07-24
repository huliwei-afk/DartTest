//Dart支持Mixin机制，类似多继承
class Person{
  run(){
    print('run');
  }
}

class Wushu{
  use(){
    print('wushu');
  }
}

class ZhangWuJi extends Person with Wushu{
  var age;
  ZhangWuJi(int age){
    this.age = age;
  }
}

void main() {
  var zhangwuji = ZhangWuJi(30);
  zhangwuji.run();
  zhangwuji.use();
}