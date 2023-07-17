import 'package:get/get.dart';

class FvouriteController extends GetxController {
  RxList<String> fruitList =
      ['Apple', 'Strawberry', 'blueberry', 'mango', 'banana'].obs;

  RxList tempList = [].obs;

  isAddFvrt(val) {
    tempList.add(val);
  }

  isRemoveFvrt(val) {
    tempList.remove(val);
  }
}
