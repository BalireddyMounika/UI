import 'package:untitled/data/network/BaseApiServices.dart';
import 'package:untitled/data/network/NetworkApiServices.dart';
import 'package:untitled/res/app_urls.dart';

class AuthRepository {
  BaseApiServices _apiServices = NetworkApiService();
  Future<dynamic> loginApi(dynamic data) async {
    try {
      dynamic response =
          await _apiServices.getPostApiResponse(AppUrl.loginEndpoint, data);
      return response;
    } catch (e) {
      throw e;
    }
  }

  Future<dynamic> registerApi(dynamic data) async {
    try {
      dynamic response = await _apiServices.getPostApiResponse(
          AppUrl.registerApiEndpoint, data);
      return response;
    } catch (e) {
      throw e;
    }
  }
}
