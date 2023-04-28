import 'package:carteirinhaapp/Domain/DTO/student_dto.dart';
import '../Infra/Cache/save_cache.dart';

class StudentService {
  late SaveCache saveCacheInfra;
  StudentService(SaveCache value) {
    saveCacheInfra = value;
  }

  saveCacheService(StudentDto value, String image) async {
    await saveCacheInfra.saveCacheAct(value, image);
  }

  getCacheService() async {
    var studentInf = await saveCacheInfra.getCacheStudent();

    if (studentInf['status'] == '200') {
      return studentInf['data'];
    }
  }
}
