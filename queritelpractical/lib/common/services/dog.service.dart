import 'package:dio/dio.dart';
import 'package:queritelpractical/common/models/dog.model.dart';

import '../rest_api.dart';

abstract class DogService extends RestAPI {
  late List<DogModel> list;
  Future<Response> getAll();
  Future<Response> add(DogModel model);
  Future<Response> update(DogModel model);
  Future<Response> delete(DogModel model);
  late String endPointURL;
}

class DogServiceImpl extends RestAPI implements DogService {
  @override
  List<DogModel> list = [];
  String endPointURL = "";
  DogServiceImpl() {
    endPointURL = serverIP + "/v1/442a4801-5715-474a-b6fd-7548ab2f8d20";
  }

  @override
  Future<Response> getAll() async {
    Response? response = await myDioGET(
      url: endPointURL,
    );
    // logger.d(response.data);
    // logger.d(response.statusCode);
    if (response!.statusCode == 200) {
      List<dynamic> temp = response.data["dogs"];
      list.clear();
      temp.forEach((element) {
        list.add(DogModel.fromJson(element));
      });
    }
    return response;
  }




  @override
  Future<Response> update(DogModel model) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<Response> add(DogModel model) {
    // TODO: implement add
    throw UnimplementedError();
  }

  @override
  Future<Response> delete(DogModel model) {
    // TODO: implement delete
    throw UnimplementedError();
  }

}
