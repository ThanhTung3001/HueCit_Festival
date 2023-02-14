import 'dart:convert';

import 'package:hue_festival/data/apiClient/api_client.dart';
import 'package:hue_festival/data/models/new/new_model.dart';

import '../../core/constants/constants.dart';

class NewClient extends ApiClient {
  Future<NewModel> getListNewByCategoryId(
      {required String categoryId,
      int page = 0,
      int pageSize = 5,
      String search = ''}) async {
    try {
      var url =
          '${AppConstances.ENTRY_POINT}${AppApi.newUrl}?categoryId=$categoryId&size=$pageSize&index=$page&q=$search';

      // Get the response from the API
      var response = await httpClient.get(url);

      // Parse the response to a JSON object

      if (response.isOk) {
        var responseJson = json.decode(response.bodyString!);
        // Set the value of festivals with the list of festivals from the API
        // var data = (responseJson as List)
        //     .map((e) => NewModel.fromJson(e))
        //     .toList();
        var dataResponse = NewModel.fromJson(responseJson);
        return dataResponse;
      } else {
        //return DataMock.coutFestivals;
        throw Exception("Có lỗi xảy ra không lấy được dữ liệu");
      }
    } catch (e) {
      throw e;
      //print(e);
    }
  }
}
