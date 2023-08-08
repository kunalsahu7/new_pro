import 'package:get/get.dart';

import '../../../utills/Apihelper.dart';

class GitaControllor extends GetxController {

  List? dataList;

  Future<List> gitaApi() {
    return ApiHelper.apiHelper.gitaApi();
  }
}