import 'package:flutter/material.dart';
import 'package:skripsi_ar_cat/shared/theme.dart';
import 'package:url_launcher/url_launcher.dart';

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
                        'Fullstack Developer',
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
                          title: 'Github',
                          icon: 'assets/images/icon_home.png',
                          url: 'https://github.com/Rivaldi72',
                        ),
                        SocialButton(
                          title: 'Linkedin',
                          icon: 'assets/images/icon_home.png',
                          url: 'https://www.linkedin.com/in/rivaldialiando7/',
                        ),
                        SocialButton(
                          title: 'Gitlab',
                          icon: 'assets/images/icon_home.png',
                          url: 'https://gitlab.com/rivdew',
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
                          title: 'Instagram',
                          icon: 'assets/images/icon_home.png',
                          url: 'https://www.instagram.com/rivaldialiando7/',
                        ),
                        SocialButton(
                          title: 'Phone',
                          icon: 'assets/images/icon_home.png',
                          url: 'tel:+6285658069092',
                        ),
                        SocialButton(
                          isWhatsApp: true,
                          title: 'Whatsapp',
                          icon: 'assets/images/icon_home.png',
                          url:
                              'https://api.whatsapp.com/send/?phone=6285658069092',
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
  final bool isWhatsApp;
  const SocialButton({
    Key? key,
    required this.title,
    required this.icon,
    required this.url,
    this.isWhatsApp = false,
  }) : super(key: key);

  Future<void> _launchUrl(url) async {
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    _launchWhatsapp() async {
      var whatsapp = "+85658069092";
      var whatsappAndroid =
          Uri.parse("whatsapp://send?phone=$whatsapp&text=hello");
      if (await canLaunchUrl(whatsappAndroid)) {
        await launchUrl(whatsappAndroid);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("WhatsApp is not installed on the device"),
          ),
        );
      }
    }

    return GestureDetector(
      onTap: () {
        isWhatsApp ? _launchWhatsapp() : _launchUrl(Uri.parse(url));
      },
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
