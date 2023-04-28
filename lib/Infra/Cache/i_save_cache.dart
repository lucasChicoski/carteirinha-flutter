import 'package:carteirinhaapp/Domain/DTO/student_dto.dart';

abstract class ISaveCache {
  Future<int> saveCacheAct(StudentDto studentData, String studentImage);
  Future<dynamic> getCacheStudent();
}
