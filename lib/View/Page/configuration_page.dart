import 'dart:io';

import 'package:carteirinhaapp/View/Elements/text_field_custom.dart';
import 'package:carteirinhaapp/View/Store/config_page.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../Assets/Logos/import_asset.dart';
import '../Components/custom_app_bar.dart';
import '../Config/config_colors.dart';
import '../Elements/elevated_button_custom.dart';

ConfigPageStore configPageStore = GetIt.I<ConfigPageStore>();

class ConfigurationPage extends StatefulWidget {
  const ConfigurationPage({super.key});

  @override
  State<ConfigurationPage> createState() => _ConfigurationPageState();
}

class _ConfigurationPageState extends State<ConfigurationPage> {
  @override
  void initState() {
    configPageStore.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double marginPhoto = width * 0.3;

    // double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: appBar(false, 'Configurações'),
      body: Center(
        child: Container(
          width: width * 0.95,
          // height: height * 0.80,
          margin: const EdgeInsets.only(top: 15, bottom: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: cardBackground,
          ),
          child: ListView(
            children: [
              const SizedBox(
                height: 10,
              ),
              Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    'Insira suas informações',
                    style: TextStyle(
                        color: appBarRed,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  )),
              const Divider(indent: 20, endIndent: 20),
              InkWell(
                onTap: configPageStore.getPicture,
                child: Container(
                  margin:
                      EdgeInsets.only(left: marginPhoto, right: marginPhoto),
                  height: 140,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    // image: DecorationImage(
                    //   fit: BoxFit.cover,
                    //   image: configPageStore.image != null
                    //       ? FileImage(File(configPageStore.image!.path))
                    //       : FileImage(File('lib/Assets/Logos/mutlivix-normal.svg')),
                    //   // image: FileImage( configPageStore.image!.path != null ? File(configPageStore.image!.path) : File(configPageStore.image!.path)),
                    // ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  // child: Image.asset(fulano),
                  child: configPageStore.image != null
                      ? ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.file(File(configPageStore.image!.path),
                              fit: BoxFit.cover),
                        )
                      : Image.asset(fulano),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(15),
                child: TextFieldCustom(
                  label: 'Matrícula',
                  onChange: configPageStore.setRegistration,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(15),
                child: TextFieldCustom(
                  label: 'Nome',
                  onChange: configPageStore.setName,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(15),
                child: TextFieldCustom(
                  label: 'Curso',
                  onChange: configPageStore.setCourse,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(15),
                child: TextFieldCustom(
                  label: 'Data de Nascimento',
                  onChange: configPageStore.setBirthDay,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(15),
                child: TextFieldCustom(
                  label: 'Data de Validade',
                  onChange: configPageStore.setValidity,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(15),
                child: TextFieldCustom(
                  label: 'Identidade',
                  onChange: configPageStore.setId,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(15),
                child: TextFieldCustom(
                  label: 'CPF',
                  onChange: configPageStore.setCpf,
                ),
              ),
              ElevatedButtonCustom(
                label: 'Registrar',
                onPress: () {
                  configPageStore
                      .setInformations(configPageStore.montInformation());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
