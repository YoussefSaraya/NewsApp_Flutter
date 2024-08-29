import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:newsapp/API/api_constants.dart';
import 'package:newsapp/Model/NewsResponse.dart';
import 'package:newsapp/Model/SourceResponse.dart';

class ApiManager{
  /*
  https://newsapi.org/v2/top-headlines/sources?apiKey=162e998a92f548b78f091d633c503fff
   */
  static Future<SourceResponse> getSource()async{
    Uri url =Uri.http(ApiConstants.baseUrl,ApiConstants.SourceApi,
    {
      'apiKey' : ApiConstants.apiKey

    }
    );
    try{
      var response = await http.get(url);
      var responseBody =response.body; ///String
      var json = jsonDecode(responseBody); ///json
      return SourceResponse.fromJson(json); ///object

    }catch(e){
      throw e;
    }

  }

  /*
    https://newsapi.org/v2/everything?q=bitcoin&apiKey=162e998a92f548b78f091d633c503fff
   */

  static Future<NewsResponse?> getNewsBySourceId(String sourceId)async{
    Uri url = Uri.http(ApiConstants.baseUrl,ApiConstants.NewsApi,{
      'apiKey':ApiConstants.apiKey,
      'sources':sourceId
    });
    var response = await http.get(url);
    try{

    }catch(e){
      throw e;
    }
    return NewsResponse.fromJson(jsonDecode(response.body));
  }
}