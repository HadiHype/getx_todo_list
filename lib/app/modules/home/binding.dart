import 'package:get/get.dart';
import 'package:getx_todo_list/app/modules/home/controller.dart';

import '../../data/providers/task/provider.dart';
import '../../data/services/storage/repository.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(
      () => HomeController(
        taskRepository: TaskRepository(taskProvider: TaskProvider()),
      ),
    );
  }
}
