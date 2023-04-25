import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ConfigPageStore extends ChangeNotifier {
  final ImagePicker picker = ImagePicker();

  String registration = '';
  String name = '';
  String course = '';
  String birthDay = '';
  String validity = '';
  String id = '';
  String cpf = '';
  XFile? image;

  setRegistration(String value) {
    registration = value;
    notifyListeners();
  }

  setName(String value) {
    name = value;
    notifyListeners();
  }

  setCourse(String value) {
    course = value;
    notifyListeners();
  }

  setBirthDay(String value) {
    birthDay = value;
    notifyListeners();
  }

  setValidity(String value) {
    validity = value;
    notifyListeners();
  }

  setId(String value) {
    id = value;
    notifyListeners();
  }

  setCpf(String value) {
    cpf = value;
    notifyListeners();
  }

  Map<String, String> montInformation() {
    Map<String, String> inf = {};
    inf['name'] = name;
    inf['registration'] = registration;
    inf['course'] = course;
    inf['birthDay'] = birthDay;
    inf['validity'] = validity;
    inf['id'] = id;
    inf['cpf'] = cpf;
    return inf;
  }

  getPicture() async {
    image = await picker.pickImage(source: ImageSource.gallery);
    notifyListeners();
  }

  bool get validateForm =>
      name.isNotEmpty &&
      registration.isNotEmpty &&
      course.isNotEmpty &&
      birthDay.isNotEmpty &&
      validity.isNotEmpty &&
      id.isNotEmpty &&
      cpf.isNotEmpty;

  setInformations(Map<String, String> value) {
    print(validateForm);
    if (validateForm) {
      print(value);
    }
  }
}