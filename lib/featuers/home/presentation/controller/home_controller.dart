import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  late CarouselController carouselController;
  int current = 0;

  List sliders = [];

  @override
  void onInit() {
    super.onInit();
    carouselController = CarouselController();
  }

  void change(int index) {
    current = index;
    update();
  }
}
