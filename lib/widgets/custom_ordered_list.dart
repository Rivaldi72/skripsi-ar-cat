import 'package:flutter/material.dart';
import 'package:skripsi_ar_cat/shared/theme.dart';

class OrderedList extends StatelessWidget {
  final String point, content;
  final bool hide;
  const OrderedList({
    Key? key,
    required this.point,
    required this.content,
    this.hide = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return !hide
        ? Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                point,
                style: blackTextStyle.copyWith(
                  fontSize: 15,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  content,
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          )
        : const SizedBox();
  }
}
