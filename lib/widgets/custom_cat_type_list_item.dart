import 'package:flutter/material.dart';
import 'package:skripsi_ar_cat/shared/theme.dart';

class CustomCatTypeListItem extends StatelessWidget {
  final String? image, name, type;
  final Function()? action;

  const CustomCatTypeListItem({
    Key? key,
    this.image,
    this.name,
    this.type,
    this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: action,
      child: Container(
        margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 11),
        height: 105,
        decoration: BoxDecoration(
          color: kWhiteColor,
          boxShadow: [
            BoxShadow(
              color: kBlackColor.withOpacity(0.1),
              blurRadius: 20,
              offset: const Offset(0, 0),
            ),
          ],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Container(
              width: 75,
              height: 75,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    image ?? 'assets/images/cat_test.jpeg',
                  ),
                  fit: BoxFit.contain,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name ?? 'Untitled',
                    style: blackTextStyle.copyWith(
                      fontSize: 22,
                      fontWeight: bold,
                      height: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Padding(
                    padding: const EdgeInsets.only(right: 25.0),
                    child: Text(
                      type ?? 'Tidak ada type',
                      style: blackTextStyle.copyWith(
                        fontSize: 15,
                        height: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      maxLines: 3,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
