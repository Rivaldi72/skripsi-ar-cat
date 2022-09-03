import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:skripsi_ar_cat/shared/theme.dart';
import 'package:skripsi_ar_cat/widgets/custom_app_bar.dart';
import 'package:skripsi_ar_cat/widgets/custom_ordered_list.dart';

class CatDiseaseScreen extends StatelessWidget {
  const CatDiseaseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, kToolbarHeight),
        child: CustomAppBar(
          title: 'Jenis-Jenis Penyakit',
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage(
                      'assets/images/bg_cat_disease.png',
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(18),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        width: double.infinity,
                        child: Text(
                          'Jenis-Jenis Penyakit',
                          textAlign: TextAlign.center,
                          style: whiteTextStyle.copyWith(
                            fontSize: 25,
                            fontWeight: bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Penyakit dapat menyerang kucing secara tiba-tiba. Ada beragam penyakit yang mengancam kesehatan kucing. Untuk mengatasinya kita perlu penyebab nya.',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 10),
                  const CustomDiseaseListItem(
                    title: '1. Distemper (Feline Panleukopenia)',
                    cause: 'Penyebab: \nVirus feline panleukopenia (FVP).',
                    symptom: '',
                    solution: '',
                  ),
                  const SizedBox(height: 20),
                  const CustomDiseaseListItem(
                    title: '2. Feline Immunodeficiency Virus (FIV)',
                    cause:
                        'Penyebab: \nVirus feline immunodeficiency (FIV) atau "retrovirus".',
                    symptom: '',
                    solution: '',
                  ),
                  const SizedBox(height: 20),
                  const CustomDiseaseListItem(
                    title: '3. Feline Infectious Peritonitis',
                    cause:
                        'Penyebab: \nVirus Feline Infectious Peritonitis (FIP).',
                    symptom: '',
                    solution: '',
                  ),
                  const SizedBox(height: 20),
                  const CustomDiseaseListItem(
                    title:
                        '4. Feline Respiratory Disease Complex (Penyakit Sistem Pernapasan Kompleks)',
                    cause: 'Penyebab: \nVirus feline viral rhinotracheitis.',
                    symptom: '',
                    solution: '',
                  ),
                  const SizedBox(height: 20),
                  const CustomDiseaseListItem(
                    title: '5. Flu Kucing',
                    cause:
                        'Penyebab: \nInfeksi satu atau kombinasi beberapa virus (virus herpes serta virus calici) dan bakteri.',
                    symptom: '',
                    solution: '',
                  ),
                  const SizedBox(height: 20),
                  const CustomDiseaseListItem(
                    title: '6. Hairball',
                    cause:
                        'Penyebab: \nKucing menjilati dan menyisir badan dan bulunya untuk menghilangkan kotoran dan bulu yang rontok. Bulu-bulu yang rontok tersangkut di lidah, ditelan, dan masuk ke saluran pencernaan.',
                    symptom: '',
                    solution: '',
                  ),
                  const SizedBox(height: 20),
                  const CustomDiseaseListItem(
                    title: '7. Leukemia Kucing',
                    cause: 'Penyebab: \nVirus feline leukemia virus (FeLV).',
                    symptom: '',
                    solution: '',
                  ),
                  const SizedBox(height: 20),
                  const CustomDiseaseListItem(
                    title: '8. Penyakit Jamur Cryptococcus',
                    cause: 'Penyebab: \nJamur Cryptococcus.',
                    symptom: '',
                    solution: '',
                  ),
                  const SizedBox(height: 20),
                  const CustomDiseaseListItem(
                    title: '9. Periodontal (Pinggiran Gigi)',
                    cause:
                        'Penyebab: \nPenumpukan karang gigi di antara gigi dan gusi sehingga merangsang perkembangan bakteri di daerah tersebut.',
                    symptom: '',
                    solution: '',
                  ),
                  const SizedBox(height: 20),
                  const CustomDiseaseListItem(
                    title: '10. Rabies',
                    cause: 'Penyebab: \nVirus rabies.',
                    symptom: '',
                    solution: '',
                  ),
                  const SizedBox(height: 20),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomDiseaseListItem extends StatelessWidget {
  final String title, cause, symptom, solution;
  const CustomDiseaseListItem({
    Key? key,
    required this.title,
    required this.cause,
    this.symptom = '',
    this.solution = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: blackTextStyle.copyWith(
            fontSize: 20,
            fontWeight: bold,
            height: 1.2,
          ),
        ),
        const SizedBox(height: 10),
        OrderedList(
          point: 'a.',
          content: cause,
        ),
        SizedBox(height: symptom == '' ? 0 : 10),
        OrderedList(
          hide: symptom == '' ? true : false,
          point: 'b.',
          content: symptom,
        ),
        SizedBox(height: solution == '' ? 0 : 10),
        OrderedList(
          hide: solution == '' ? true : false,
          point: 'c.',
          content: solution,
        ),
      ],
    );
  }
}
