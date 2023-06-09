import 'package:carteirinhaapp/Domain/DTO/student_dto.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../Infra/Cache/save_cache.dart';
import '../../Service/student_service.dart';

SaveCache saveCache = SaveCache();
StudentService studentService = StudentService(saveCache);

class ConfigPageStore extends ChangeNotifier {
  final ImagePicker picker = ImagePicker();

  StudentDto studentDto = StudentDto();
  XFile? image;

  setRegistration(String value) {
    studentDto.registration = value;

    notifyListeners();
  }

  setName(String value) {
    studentDto.name = value;

    notifyListeners();
  }

  setCourse(String value) {
    studentDto.course = value;

    notifyListeners();
  }

  setBirthDay(String value) {
    studentDto.birthDay = value;

    notifyListeners();
  }

  setValidity(String value) {
    studentDto.validity = value;

    notifyListeners();
  }

  setId(String value) {
    studentDto.id = value;

    notifyListeners();
  }

  setCpf(String value) {
    studentDto.cpf = value;

    notifyListeners();
  }

  getPicture() async {
    image = await picker.pickImage(source: ImageSource.gallery);
    studentDto.image = image!.path;
    notifyListeners();
  }

  bool get validateForm =>
      studentDto.name.isNotEmpty &&
      studentDto.registration.isNotEmpty &&
      studentDto.course.isNotEmpty &&
      studentDto.birthDay.isNotEmpty &&
      studentDto.validity.isNotEmpty &&
      studentDto.id.isNotEmpty &&
      studentDto.cpf.isNotEmpty;

  getInformations() async {
    StudentDto studentInf = await studentService.getCacheService();
    studentDto = studentInf;
    notifyListeners();
  }

  setInformations(StudentDto value, String image, BuildContext context) async {
    print(validateForm);
    await studentService.saveCacheService(value, image);

    Navigator.pop(context);
    // if (validateForm) {
    // }
  }
}
