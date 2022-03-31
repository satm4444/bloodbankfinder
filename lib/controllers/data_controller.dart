import 'dart:convert';

import 'package:bloodbankfinder/models/bloodbank_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class DataController extends GetxController {
  var newsList = <BloodBank>[].obs;

  String url = "https://my-json-server.typicode.com/satm4444/fakeapi/ambulance";

  @override
  void onReady() {
    super.onReady();
    getData();
  }

  Future<void> getData() async {
    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        List<dynamic> jsonData = jsonDecode(response.body);

        List<BloodBank> loadedData =
            jsonData.map((e) => BloodBank.fromJson(e)).toList();

        newsList.addAll(loadedData);
      }
    } catch (e) {
      print(e);
    }
  }
}
