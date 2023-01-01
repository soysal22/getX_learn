// ignore_for_file: unused_local_variable, prefer_typing_uninitialized_variables, non_constant_identifier_names, avoid_print, body_might_complete_normally_nullable

import 'dart:convert';
import 'dart:developer';
import 'package:get/get.dart';
import 'package:http_get_use/core/constants/constants.dart';
import 'package:http/http.dart' as http;
import 'package:http_get_use/core/models/todos_model.dart';

class TodosApiService extends GetxController {
  List title = [].obs;
  List completed = [].obs;

  Future getTodosList() async {
    var Url = Uri.parse(Constants.TODOS_URL);

    var response = await http.get(Url);

    if (response.statusCode == 200) {
      final jsonDecode = json.decode(response.body);

      title = jsonDecode.map((e) => TodosModel.fromJson(e).title).toList();
      // update();
      completed =
          jsonDecode.map((e) => TodosModel.fromJson(e).completed).toList();

      log(response.body);
      //print(response.body);

      /// update();
      //   return listem;
    }
  }
}
