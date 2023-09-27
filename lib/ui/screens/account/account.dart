import 'package:consultant_app_ui/ui/widgets/general_widgets/headers.dart';
import 'package:consultant_app_ui/ui/widgets/profile_widget/profile_threads.dart';
import 'package:consultant_app_ui/utils/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              const Headers(text: 'Profile', icon: Iconsax.profile_add),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Column(
                  children: [
                    Stack(clipBehavior: Clip.none,
                        children: [
                      const CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.deepOrange,
                      ),
                      Positioned(bottom: 15,
                          child: Image.asset(height: 100,width: 100,
                          'assets/png/doc.png')),
                    ]),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Mr. Consultant App',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                    const Text(
                      '29 years old',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.grey),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 60,
              ),
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)
                      ),
                      elevation:0,
                      child: Container(
                        width: 120,

                        padding: EdgeInsets.symmetric(vertical: 25,horizontal: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: CircleAvatar(
                                radius: 3,
                                backgroundColor: Colors.blueAccent,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Weight',style:textTheme.bodySmall?.copyWith(color: Colors.grey),),
                                 const SizedBox(height: 5,),
                                 Text(
                                  '55kg',
                                  style: textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w600),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)
                      ),
                      elevation:0,
                      child: Container(
                        width: 120,

                        padding: EdgeInsets.symmetric(vertical: 25,horizontal: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: CircleAvatar(
                                radius: 3,
                                backgroundColor: Colors.blueAccent,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Weight',style:textTheme.bodySmall?.copyWith(color: Colors.grey),),
                                const SizedBox(height: 5,),
                                Text(
                                  '55kg',
                                  style: textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w600),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
               Text(
                'Your Recent Threads',
                style: textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w500,),
              ),
              // SizedBox(height: 20,),
              const ProfileThreads()
            ],
          ),
        ),
      ),
    );
  }
}
