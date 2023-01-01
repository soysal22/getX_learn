import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http_get_use/core/service/todos_service.dart';

class TodosView extends StatelessWidget {
  const TodosView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TodosApiService>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("REST APİ"),
          ),
          body: FutureBuilder(
            future: controller.getTodosList(),
            builder: (context, snapshot) {
              if (controller.title.isNotEmpty) {
                return ListView.builder(
                  itemCount: controller.title.length,
                  itemBuilder: (context, index) {
                    // var title = TodosApiService().title;
                    // var completed = TodosApiService().completed;
                    return Card(
                        margin: const EdgeInsets.only(top: 10),
                        child: ListTile(
                          title: Text(controller.title[index] ?? "title"),
                          subtitle:
                              Text(controller.completed[index].toString()),
                        ));
                  },
                );
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          ),
        );
      },
    );
  }
}
