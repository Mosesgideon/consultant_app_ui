
import 'package:consultant_app_ui/ui/screens/add_screen/doctors_description.dart';
import 'package:consultant_app_ui/ui/widgets/add_doctor/doc_items.dart';
import 'package:consultant_app_ui/ui/widgets/general_widgets/search_field.dart';
import 'package:consultant_app_ui/utils/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddDoc extends StatefulWidget {
  const AddDoc({Key? key}) : super(key: key);

  @override
  State<AddDoc> createState() => _AddDocState();
}

class _AddDocState extends State<AddDoc> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          const SearchField(),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  CupertinoPageRoute(builder: (index) => const DoctorsDetails()));

            },
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(0.1)
                   ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
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
                              'dr.Theresa Webb',
                              style: textTheme.titleLarge!.copyWith(
                                  fontWeight: FontWeight.w600, ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Dermatology',
                              style: textTheme.titleSmall!.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey),
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                     Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Theme.of(context).colorScheme.primary,
                          size: 17,
                        ),
                        Text('4.5 . ', style: textTheme.bodyMedium!.copyWith(color: Colors.grey)),
                        Text(
                          'Available Mon - Wed, 9:00 - 15:00 ',
                          style:  textTheme.bodyMedium!.copyWith(color: Colors.grey,),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  CupertinoPageRoute(builder: (index) => DoctorsDetails()));

            },
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Container(
                padding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(0.1)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
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
                              'dr.Theresa Webb',
                              style: textTheme.titleLarge!.copyWith(
                                fontWeight: FontWeight.w600, ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Dermatology',
                              style: textTheme.titleSmall!.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey),
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Theme.of(context).colorScheme.primary,
                          size: 17,
                        ),
                        Text('4.5 . ', style: textTheme.bodyMedium!.copyWith(color: Colors.grey)),
                        Text(
                          'Available Mon - Wed, 9:00 - 15:00 ',
                          style:  textTheme.bodyMedium!.copyWith(color: Colors.grey,),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),

          const DocItems()
        ]),
      ),
    );
  }
}
