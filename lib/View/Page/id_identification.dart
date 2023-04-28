import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';

import '../../Assets/Logos/import_asset.dart';
import '../Components/custom_app_bar.dart';
import '../Config/config_colors.dart';
import '../Store/config_page.dart';

ConfigPageStore _configPageStore = GetIt.I<ConfigPageStore>();

class IDIdentification extends StatefulWidget {
  const IDIdentification({super.key});

  @override
  State<IDIdentification> createState() => _IDIdentificationState();
}

class _IDIdentificationState extends State<IDIdentification> {
  @override
  void initState() {
    _configPageStore.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.95;
    double heigth = MediaQuery.of(context).size.height * 0.85;
    double fullWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: appBar(false, 'Carteirinha'),
      body: Center(
        child: Container(
          width: width,
          height: heigth,
          decoration: BoxDecoration(
              color: cardBackground, borderRadius: BorderRadius.circular(5)),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      // color: Colors.blue,
                      height: 110,
                      child: _configPageStore.studentDto.image.isNotEmpty
                          ? ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.file(
                                  File(_configPageStore.studentDto.image),
                                  fit: BoxFit.cover),
                            )
                          : Image.asset(fulano),

                      //Image.asset(fulano)
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      // color: Colors.blueGrey,
                      height: 110,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)),
                            padding: const EdgeInsets.all(10),
                            width: MediaQuery.of(context).size.width,
                            child: SvgPicture.asset(logoMobile),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: cardMatricula,
                                borderRadius: BorderRadius.circular(5)),
                            width: fullWidth,
                            child: Column(
                              children: [
                                const Text(
                                  'Matrícula',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  _configPageStore.studentDto.registration,
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                _configPageStore.studentDto.name,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: appBarRed),
              ),
              const SizedBox(
                height: 50,
              ),
              const Divider(
                color: Colors.white,
                indent: 50,
                endIndent: 50,
                thickness: 2,
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                width: fullWidth,
                // color: Colors.lightBlue,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'CURSO',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: fontColor),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      _configPageStore.studentDto.course,
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: appBarRed),
                    ),
                  ],
                ),
              ),
              Container(
                  padding: const EdgeInsets.all(10),
                  width: fullWidth,
                  // color: Colors.lightBlue,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'DATA DE NASCIMENTO',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: fontColor),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            _configPageStore.studentDto.birthDay,
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: appBarRed),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'STATUS',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: fontColor),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Ativo',
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: appBarRed),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'VALIDADE',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: fontColor),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            _configPageStore.studentDto.validity,
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: appBarRed),
                          ),
                        ],
                      ),
                    ],
                  )),
              Container(
                  padding: const EdgeInsets.all(10),
                  width: fullWidth,
                  // color: Colors.lightBlue,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'IDENTIDADE',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: fontColor),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            _configPageStore.studentDto.id,
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: appBarRed),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 35,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'CPF',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: fontColor),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            _configPageStore.studentDto.cpf,
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: appBarRed),
                          ),
                        ],
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
