import 'dart:convert';

import 'package:hue_festival/data/mock/data_mock.dart';
import 'package:hue_festival/data/models/festival/festival_model.dart';

import '../../core/constants/constants.dart';
import '../models/festival/count_festival_type.dart';
import 'api_client.dart';

class FestivalClient extends ApiClient {
  // Method to get the list of festivals
  Future<List<FestivalModel>> getFestivals({
    int page = 1,
    int pageSize = 10,
    String conditions = '{"1":"1"}',
  }) async {
    try {
      // URL to fetch the list of festivals
      var url =
          '${AppConstances.ENTRY_POINT}${AppApi.festivalList}?conditions=$conditions&page=$page&pageper=$pageSize';

      // Get the response from the API
      var response = await httpClient.get(url);

      // Parse the response to a JSON object

      if (response.isOk) {
        var responseJson = json.decode(response.bodyString!);
        // Set the value of festivals with the list of festivals from the API
        var data = (responseJson as List)
            .map((e) => FestivalModel.fromJson(e))
            .toList();
        return data;
      } else {
        throw Exception("Có lỗi xảy ra không lấy được dữ liệu");
      }
    } catch (e) {
      throw e;
      //print(e);
    }
  }

  Future<List<CoutFestivalTypeModal>> getCountFestivalTypes() async {
    try {
      var url = '${AppConstances.ENTRY_POINT}${AppApi.countFestivalType}';

      // Get the response from the API
      var response = await httpClient.get(url);

      // Parse the response to a JSON object

      if (response.isOk) {
        var responseJson = json.decode(response.bodyString!);
        // Set the value of festivals with the list of festivals from the API
        var data = (responseJson as List)
            .map((e) => CoutFestivalTypeModal.fromJson(e))
            .toList();
        return data;
      } else {
        return DataMock.coutFestivals;
        // throw Exception("Có lỗi xảy ra không lấy được dữ liệu");
      }
    } catch (e) {
      throw e;
      //print(e);
    }
  }
}
