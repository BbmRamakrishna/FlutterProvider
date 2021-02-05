import 'package:flutter_provider/network/nao/first_screen_nao.dart';
import 'package:flutter_provider/view/first_screen_controller.dart';
import 'package:get/get.dart';

class FirstScreenViewModel {
  FirstScreenController firstScreenController;

  FirstScreenViewModel(this.firstScreenController);

  Future<List<dynamic>> apiCallForDiagnocareResponse() async {
    dynamic response = await FirstScreenNao().diagnocareRes();
    if (response != null) {
      Get.snackbar("Diagnal Solutions Response", "Passed");
      firstScreenController.setDiagnocareResponse(response);
    } else {
      Get.snackbar("Diagnal Solutions Response", "Failed");
    }
  }
}
