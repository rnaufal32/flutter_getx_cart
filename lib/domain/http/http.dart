import 'package:get/get.dart';

class Http extends GetConnect {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    httpClient.baseUrl = 'https://www.themealdb.com/api/json/v1/1/';

    httpClient.addResponseModifier(
      (request, response) {
        printInfo(info: '${response.body}');
        return response;
      },
    );
  }
}
