void main() {
  try{
    //...
  }on Exception catch(e){
    print('Unknown exception');
  }catch (e){
    print('Something really unknown');
  }finally{
    //...必定执行
  }
}