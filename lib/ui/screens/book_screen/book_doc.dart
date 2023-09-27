import 'package:consultant_app_ui/ui/screens/book_screen/book_success.dart';
import 'package:consultant_app_ui/ui/widgets/general_widgets/custom_button.dart';
import 'package:consultant_app_ui/utils/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BookScreen extends StatefulWidget {
  const BookScreen({super.key});

  @override
  State<BookScreen> createState() => _BookScreenState();
}

class _BookScreenState extends State<BookScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  radius: 25,
                  child: CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.white,
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Iconsax.arrow_left,
                          color: Theme.of(context).colorScheme.onBackground,
                        )),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Booking\nOverview',
                  style: textTheme.titleLarge?.copyWith(),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 70,
                    backgroundColor: Colors.grey,
                    child: CircleAvatar(
                      radius: 68,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 66,
                        backgroundColor: Color(0xff1e9996),
                        child: Center(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                "3",
                                style: TextStyle(
                                    fontSize: 40, color: Colors.white),
                              ),
                              Text(
                                "THU",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "13:00 - 13:29",
                    style: textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Container(
                padding: const EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Stack(clipBehavior: Clip.none, children: [
                      const CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.deepOrange,
                      ),
                      Positioned(
                          bottom: 8,
                          child: Image.asset(
                              height: 50, width: 50, 'assets/png/doc.png')),
                    ]),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'dr. Theresa Webb',
                          style: textTheme.titleLarge?.copyWith(),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Dermatology',
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Siloam Hospital",
                    style: textTheme.titleLarge?.copyWith(),
                  ),
                  Text(
                    "JR. Raya Gubeng No.7, Gubeng",
                    style: textTheme.titleSmall?.copyWith(color: Colors.grey),
                  )
                ],
              ),
            ),
            const Spacer(),
            CustomButton(
                child: const Text('Book Now'),
                onPressed: () {
                  Navigator.of(context).push(
                      CupertinoPageRoute(builder: (index) => const BookSuccess()));
                })
          ],
        ),
      ),
    );
  }
}
