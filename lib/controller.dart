import 'package:get/get.dart';

class BuildController extends GetxController{
  int counterOne=0;
  int counterTwo=0;
void increment(){
  counterOne++;
  update();
}
  void decrement(){
    counterOne--;
    update();
  }
  void goToScreenOne(){
  Get.toNamed('/screenone');

  }
}