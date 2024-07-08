import 'package:hive/hive.dart';
part 'list_task.g.dart';

@HiveType(typeId: 0)
class Task {
  // task untuk menampung deskripsi nya apa
  @HiveField(0)
  String task;
  // taskcreated untuk menampung waktunya karena harus pada waktu itu
  @HiveField(1)
  String taskCreated;

  Task(this.task, this.taskCreated);
}