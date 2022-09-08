import 'package:flutter/material.dart';
import 'package:skripsi_ar_cat/shared/theme.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F4FA),
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 350, left: 20, right: 20),
                  height: 410,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                    color: kPrimaryColor,
                  ),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            const SizedBox(height: 5),
                            Text(
                              '15',
                              style: whiteTextStyle.copyWith(
                                fontSize: 20,
                                fontWeight: bold,
                              ),
                            ),
                            Text(
                              'PROJECTS',
                              style: secondaryWhiteTextStyle.copyWith(
                                fontSize: 12,
                                fontWeight: bold,
                                height: 1,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const SizedBox(height: 5),
                            Text(
                              '4 Years',
                              style: whiteTextStyle.copyWith(
                                fontSize: 20,
                                fontWeight: bold,
                              ),
                            ),
                            Text(
                              'EXPERIENCES',
                              style: secondaryWhiteTextStyle.copyWith(
                                fontSize: 12,
                                fontWeight: bold,
                                height: 1,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const SizedBox(height: 5),
                            Text(
                              '15',
                              style: whiteTextStyle.copyWith(
                                fontSize: 20,
                                fontWeight: bold,
                              ),
                            ),
                            Text(
                              'PROJECTS',
                              style: secondaryWhiteTextStyle.copyWith(
                                fontSize: 12,
                                fontWeight: bold,
                                height: 1,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  height: 350,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                    color: kWhiteColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: const Icon(
                              Icons.arrow_back_rounded,
                              size: 30,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/ali.jpg'),
                            radius: 80,
                          )
                        ],
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Rivaldi Aliando',
                        style: blackTextStyle.copyWith(
                          fontSize: 30,
                          fontWeight: extraBold,
                        ),
                      ),
                      // const SizedBox(height: 10),
                      // const SizedBox(height: 10),
                      Text(
                        'Fullstack Programmer',
                        style: secondaryBlackTextStyle.copyWith(
                          fontSize: 15,
                          fontWeight: bold,
                          height: 1.1,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: kWhiteColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        SocialButton(
                          title: 'Linkedin',
                          icon: 'assets/images/icon_home.png',
                          url: 'www.linkedin.com',
                        ),
                        SocialButton(
                          title: 'Linkedin',
                          icon: 'assets/images/icon_home.png',
                          url: 'www.linkedin.com',
                        ),
                        SocialButton(
                          title: 'Linkedin',
                          icon: 'assets/images/icon_home.png',
                          url: 'www.linkedin.com',
                        ),
                      ],
                    ),
                    const Divider(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        SocialButton(
                          title: 'Linkedin',
                          icon: 'assets/images/icon_home.png',
                          url: 'www.linkedin.com',
                        ),
                        SocialButton(
                          title: 'Linkedin',
                          icon: 'assets/images/icon_home.png',
                          url: 'www.linkedin.com',
                        ),
                        SocialButton(
                          title: 'Linkedin',
                          icon: 'assets/images/icon_home.png',
                          url: 'www.linkedin.com',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SocialButton extends StatelessWidget {
  final String title, icon, url;
  const SocialButton({
    Key? key,
    required this.title,
    required this.icon,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          Image.asset(
            icon,
            width: 40,
          ),
          const SizedBox(height: 5),
          Text(
            title,
            style: secondaryBlackTextStyle.copyWith(
              fontSize: 15,
              fontWeight: bold,
              height: 1,
            ),
          ),
        ],
      ),
    );
  }
}
