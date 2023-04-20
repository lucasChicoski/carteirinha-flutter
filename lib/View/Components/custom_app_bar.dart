import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Assets/Logos/import_asset.dart';
import '../Config/config_colors.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget {
  bool showLogo = true;
  String? titleAppBar = '';
  CustomAppBar({super.key, required this.showLogo, this.titleAppBar});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50, bottom: 10),
      decoration: BoxDecoration(color: appBarRed, boxShadow: const [
        BoxShadow(offset: Offset(0, 5), color: Colors.grey, blurRadius: 5)
      ]),
      child: showLogo
          ? SvgPicture.asset(
              showLogo ? logoMobile : '',
              color: Colors.white,
            )
          : Row(
              children: [
                Expanded(
                  flex: 1,
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.keyboard_backspace_rounded,
                        color: Colors.white,
                      )),
                ),
                Expanded(
                    flex: 7,
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        titleAppBar!,
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ))
              ],
            ),
    );
  }
}

PreferredSizeWidget appBar(bool showLogo, String titleAppBar) {
  return PreferredSize(
      preferredSize: const Size.fromHeight(70),
      child: CustomAppBar(
        showLogo: showLogo,
        titleAppBar: titleAppBar,
      ));
}
