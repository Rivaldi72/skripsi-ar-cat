import 'package:flutter/material.dart';
import 'package:skripsi_ar_cat/shared/theme.dart';

class CustomBottomNavigationItem extends StatelessWidget {
  final String icon;
  final bool isSelected;
  final double? iconSize;
  final String? title;

  const CustomBottomNavigationItem({
    Key? key,
    required this.icon,
    this.iconSize,
    this.title,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(),
        Column(
          children: [
            Container(
              width: iconSize ?? 35,
              height: iconSize ?? 35,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    icon,
                  ),
                ),
              ),
            ),
            title != ''
                ? Text(
                    title ?? '',
                    style: blackTextStyle.copyWith(
                      fontSize: 11,
                      fontWeight: bold,
                      height: 1.3,
                    ),
                  )
                : Container()
          ],
        ),
      ],
    );
  }
}
