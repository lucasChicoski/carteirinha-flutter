import 'package:carteirinhaapp/Domain/DTO/student_dto.dart';
import 'package:carteirinhaapp/Infra/Cache/i_save_cache.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SaveCache implements ISaveCache {
  @override
  Future<dynamic> getCacheStudent() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    StudentDto studentDto = StudentDto();

    try {
      String? name = prefs.getString('name') ?? '';
      String? course = prefs.getString('course') ?? '';
      String? birthDay = prefs.getString('birthDay') ?? '';
      String? validity = prefs.getString('validity') ?? '';
      String? id = prefs.getString('id') ?? '';
      String? cpf = prefs.getString('cpf') ?? '';
      String? registration = prefs.getString('registration') ?? '';
      String? photoImage = prefs.getString('image') ?? '';

      studentDto.name = name;
      studentDto.course = course;
      studentDto.birthDay = birthDay;
      studentDto.validity = validity;
      studentDto.id = id;
      studentDto.cpf = cpf;
      studentDto.registration = registration;
      studentDto.image = photoImage;

      return {'data': studentDto, 'status': '200'};
    } catch (e) {
      return {'data': '', 'status': '500', 'mensagem': 'Erro ao Ler dados'};
    }
  }

  @override
  Future<int> saveCacheAct(StudentDto studentData, String studentImage) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    try {
      await prefs.setString('name', studentData.name);
      await prefs.setString('course', studentData.course);
      await prefs.setString('birthDay', studentData.birthDay);
      await prefs.setString('validity', studentData.validity);
      await prefs.setString('id', studentData.id);
      await prefs.setString('cpf', studentData.cpf);
      await prefs.setString('registration', studentData.registration);
      await prefs.setString('image', studentImage);
      return 0;
    } catch (e) {
      return 1;
    }
  }
}
