import 'dart:convert';

import 'package:hue_festival/data/apiClient/api_client.dart';
import 'package:hue_festival/data/models/events/events_model.dart';

import '../../core/constants/constants.dart';

class EventClient extends ApiClient {
  Future<List<EventModel>> getEvents() async {
    try {
      var url = '${AppConstances.ENTRY_POINT}${AppApi.eventUrl}';

      // Get the response from the API
      var response = await httpClient.get(url);

      // Parse the response to a JSON object

      if (response.isOk) {
        var responseJson = json.decode(response.bodyString!);

        var data =
            (responseJson as List).map((e) => EventModel.fromJson(e)).toList();
        return data;
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
