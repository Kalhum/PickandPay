import 'package:http/http.dart' as http;
class NetworkConfig {
  static const String baseUrl = 'localhost:2000';

  Future<http.Response> postApi(String path , Map body) async{
    var response =  await http.post(Uri.http(baseUrl, path));
    return response ;
  }


  Future<http.Response> deleteApi(String path , Map body) async{
    var response =  await http.delete(Uri.http(baseUrl, path));
    return response ;
  }
}

