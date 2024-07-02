import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class CounterController extends GetxController{
  RxString searchedName = "".obs;
  RxString imgUrl = "".obs;
  RxString chatUserName = "".obs;
  RxDouble screenSize = 0.0.obs;

  changeSearchName(String name){
    searchedName.value = name;
  }

  changeScreenSize(double size){
    screenSize.value = size;
  }

  changeImgUrl(String url){
    searchedName.value = url;
  }

  changeChatUserName(String userName){
    searchedName.value = userName;
  }
}