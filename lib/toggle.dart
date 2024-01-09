import 'package:get/get.dart';

class AwesomeDrawerBarController extends GetxController {
  final isDrawerOpen = false.obs;

  void toggleDrawer() {
    isDrawerOpen.value = !isDrawerOpen.value;
  }
}