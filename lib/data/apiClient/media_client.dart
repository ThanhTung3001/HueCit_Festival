import 'dart:convert';

import 'package:hue_festival/data/apiClient/api_client.dart';
import 'package:hue_festival/data/models/media/media_model.dart';

import '../../core/app_export.dart';

class MediaClient extends ApiClient {
  Future<List<MediaModel>> getMedias({int type = 3}) async {
    try {
      // URL to fetch the list of festivals
      var url = '${AppConstances.ENTRY_POINT}${AppApi.mediaUrl}?type=$type';

      // Get the response from the API
      var response = await httpClient.get(url);

      // Parse the response to a JSON object

      if (response.isOk) {
        var responseJson = json.decode(response.bodyString!);
        // Set the value of festivals with the list of festivals from the API
        var data =
            (responseJson as List).map((e) => MediaModel.fromJson(e)).toList();
        return data;
      } else {
        throw Exception("Có lỗi xảy ra không lấy được dữ liệu");
      }
    } catch (e) {
      throw e;
      //print(e);
    }
  }
}
