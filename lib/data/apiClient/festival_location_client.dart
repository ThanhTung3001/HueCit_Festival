import 'dart:convert';

import 'package:hue_festival/data/apiClient/api_client.dart';
import 'package:hue_festival/data/models/festival/festival_map_model.dart';

import '../../core/app_export.dart';
import '../models/festival/festiva_location_model.dart';

class FestivalLocatonClient extends ApiClient {
  Future<List<FestivalLocationModel>> getFestivalLocation() async {
    try {
      var url = '${AppConstances.ENTRY_POINT}${AppApi.festivalLocation}';

      // Get the response from the API
      var response = await httpClient.get(url);

      // Parse the response to a JSON object

      if (response.isOk) {
        var responseJson = json.decode(response.bodyString!);
        // Set the value of festivals with the list of festivals from the API
        var data = (responseJson as List)
            .map((e) => FestivalLocationModel.fromJson(e))
            .toList();
        return data;
      } else {
        //return DataMock.coutFestivals;
        return [];
      }
    } catch (e) {
      throw e;
      //print(e);
    }
  }

  Future<List<MapFestival>> getFestivalMap() async {
    try {
      var url = '${AppConstances.ENTRY_POINT}${AppApi.festivalMap}';

      // Get the response from the API
      var response = await httpClient.get(url);

      // Parse the response to a JSON object

      if (response.isOk) {
        var responseJson = json.decode(response.bodyString!);
        // Set the value of festivals with the list of festivals from the API
        var data =
            (responseJson as List).map((e) => MapFestival.fromJson(e)).toList();
        return data;
      } else {
        //return DataMock.coutFestivals;
        return [];
      }
    } catch (e) {
      throw e;
      //print(e);
    }
  }
}
