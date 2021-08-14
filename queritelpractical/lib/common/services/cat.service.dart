import 'package:dio/dio.dart';
import 'package:queritelpractical/common/models/cat.model.dart';

import '../rest_api.dart';

abstract class CatService extends RestAPI {
  late List<CatModel> list;
  Future<Response> getAll();
  Future<Response> add(CatModel model);
  Future<Response> update(CatModel model);
  Future<Response> delete(CatModel model);
  late String endPointURL;
}

class CatServiceImpl extends RestAPI implements CatService {
  @override
  List<CatModel> list = [];
  String endPointURL = "";
  CatServiceImpl() {
    endPointURL = serverIP + "/v1/77290441-d8e9-483f-80a2-a336a3364bbe";
  }

  @override
  Future<Response> getAll() async {
    Response? response = await myDioGET(
      url: endPointURL,
    );
    // logger.d(response.data);
    // logger.d(response.statusCode);
    if (response!.statusCode == 200) {
      List<dynamic> temp = response.data["cats"];
      list.clear();
      temp.forEach((element) {
        list.add(CatModel.fromJson(element));
      });
    }
    return response;
  }




  @override
  Future<Response> update(CatModel model) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<Response> add(CatModel model) {
    // TODO: implement add
    throw UnimplementedError();
  }

  @override
  Future<Response> delete(CatModel model) {
    // TODO: implement delete
    throw UnimplementedError();
  }

}
