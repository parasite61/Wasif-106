import 'dart:convert';

import 'package:http/http.dart' as http;

class NetWorking {
  String url;

  NetWorking(this.url);
  Future<dynamic>GetWeatherData() async {
     var formateddata;
    var response = await http.get(Uri.parse(url));
    if(response.statusCode==200){
       formateddata=jsonDecode(response.body);
    }
    print(formateddata);
    return formateddata;
    //return response;
  }
}
