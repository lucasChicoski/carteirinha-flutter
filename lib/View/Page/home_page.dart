import 'package:carteirinhaapp/View/Components/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import '../Elements/icon_button_.dart';
import '../Config/config_colors.dart';
import '../Store/config_page.dart';
import '../Store/navigation_pages.dart';

ConfigPageStore _configPageStore = GetIt.I<ConfigPageStore>();

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    _configPageStore.getInformations();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(true, ''),
      body: Container(
        color: backGroundGrey,
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Text(
              'Bem vindo de novo Lucas',
              style: TextStyle(
                  color: appBarRed, fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(
              height: 40,
            ),
            const Divider(thickness: 3, endIndent: 40, indent: 40),
            const SizedBox(
              height: 20,
            ),
            Wrap(
              spacing: 50,
              runSpacing: 10,
              children: [
                IconButtonC(
                  onPressed: () => {
                    NavigationPages.navigationToPage('/carteirinha', context)
                  },
                  icon: Icons.badge_outlined,
                  titleIcon: 'Carteirinha',
                ),
                IconButtonC(
                  onPressed: () {
                    NavigationPages.navigationToPage('/configuration', context);
                  },
                  icon: Icons.settings,
                  titleIcon: 'Configurações',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
