class JointFunction{
//如果一个类实现了call函数 那么可以在下面直接调用这个类 相当于调用call方法
  call(String a, String b, String c, String d) => '$a $b $c $d';

}

main() {
  var jf = new JointFunction();
  var out = jf('wo','shi','hao','ren');
  var out2 = jf.call('wo','shi','hao','ren');
  print(out);
  print(out2);
}
