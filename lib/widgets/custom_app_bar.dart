import 'package:flutter/material.dart';
import 'package:skripsi_ar_cat/shared/theme.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final Widget? leadingIcon;
  const CustomAppBar({
    Key? key,
    this.leadingIcon,
    this.title = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: leadingIcon ??
            Image.asset(
              'assets/images/icon_back.png',
              height: 25,
            ),
      ),
      title: Text(
        title,
        style: whiteTextStyle.copyWith(
          fontSize: 20,
          fontWeight: bold,
        ),
      ),
      centerTitle: false,
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg_app_bar_copy.png'),
            fit: BoxFit.contain,
            alignment: Alignment.bottomCenter,
          ),
        ),
      ),
    );
  }
}
