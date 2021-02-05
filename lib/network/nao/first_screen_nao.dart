
import 'package:flutter_provider/network/base/base_api_call.dart';
import 'package:flutter_provider/network/network_endpoints.dart';
import 'package:flutter_provider/view/first_screen_controller.dart';

class FirstScreenNao {
  FirstScreenController firstScreenController;

  Future<List<dynamic>> diagnocareRes() async {
    var response = await BaseApi()
        .get(
      // HTTP-GET request
      url: NetworkEndpoints().getx_API, // REST api URL
    );
    return response;
  }
}
