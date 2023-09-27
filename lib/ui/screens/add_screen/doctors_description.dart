import 'package:consultant_app_ui/ui/screens/book_screen/book_doc.dart';
import 'package:consultant_app_ui/ui/widgets/general_widgets/custom_button.dart';
import 'package:consultant_app_ui/utils/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DoctorsDetails extends StatefulWidget {
  const DoctorsDetails({Key? key}) : super(key: key);

  @override
  State<DoctorsDetails> createState() => _DoctorsDetailsState();
}

class _DoctorsDetailsState extends State<DoctorsDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xff1e9996),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'dr. Theresa\nWebb',
                          style: textTheme.titleLarge!
                              .copyWith(color: Colors.white),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Dermatology',
                          style: textTheme.titleSmall!
                              .copyWith(color: Colors.white),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        RatingBar.builder(
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 18,
                          // itemPadding:
                          //     const EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            size: 15,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          onRatingUpdate: (rating) {},
                        )
                      ],
                    ),
                    const Spacer(),
                    Image.asset(height: 200, 'assets/png/doc.png')
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: CircleAvatar(
                            radius: 3,
                            backgroundColor: Color(0xff1e9996),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Language"),
                            Text(
                              'ENG',
                              style: textTheme.titleLarge?.copyWith(),
                            )
                          ],
                        )
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: CircleAvatar(
                            radius: 3,
                            backgroundColor: Color(0xff1e9996),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Experince"),
                            Text(
                              '8 years',
                              style: textTheme.titleLarge?.copyWith(),
                            )
                          ],
                        )
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: CircleAvatar(
                            radius: 3,
                            backgroundColor: Color(0xff1e9996),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Patients"),
                            Text(
                              '189',
                              style: textTheme.titleLarge?.copyWith(),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 30,),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Doctors, also known as physicians, are licensed health professionals who maintain and restore human health through the practice of medicine. medical history, diagnose illnesses or injuries, administer treatment,',
                      style: textTheme.titleSmall?.copyWith(
                       letterSpacing: 1
                      ),
                    ),
                    Text(
                      'read more',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  Container(
                    width: 150,
                    decoration: const BoxDecoration(

                    ),
                      child: Image.asset(height: 100, 'assets/png/doc.png')

                  ),
                  Container(
                    decoration: const BoxDecoration(color: Colors.white),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Siloam Hospital\nSurubaya',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 20),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'JI Raya Gubeng No 70',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.black.withOpacity(0.5)),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text(
                              'Open in Google map',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  color: Theme.of(context).colorScheme.primary),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Icon(
                              Icons.arrow_forward_rounded,
                              color: Colors.deepOrange,
                              size: 15,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              CustomButton(
                  onPressed: () {
                    Navigator.of(context).push(CupertinoPageRoute(builder: (index)=>BookScreen()));
                  },
                  bgColor: Theme.of(context).colorScheme.primary,
                  child: const Text(
                    'Create Appointment',
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
