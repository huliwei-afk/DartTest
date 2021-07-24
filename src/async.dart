main(){
  //async 和 await 必须一起使用
  FileOperate() async{
    var file = await readFile();
  }
}

readFile(){

}