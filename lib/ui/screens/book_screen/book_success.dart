import 'package:consultant_app_ui/ui/screens/dashboard/dashboard.dart';
import 'package:consultant_app_ui/ui/widgets/general_widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/theme/text_theme.dart';

class BookSuccess extends StatefulWidget {
  const BookSuccess({super.key});

  @override
  State<BookSuccess> createState() => _BookSuccessState();
}

class _BookSuccessState extends State<BookSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(

                height: 108,
                width: 108,
                child: Center(
                  child: Stack(

                    children: [
                      Center(
                        child: SizedBox(
                            height: 107,
                            width: 107,

                            child: CircularProgressIndicator(value: 0.7,)),
                      ),
                      Center(
                        child: CircleAvatar(
                          radius: 50,
                          backgroundColor: Color(0xff1e9996),
                          child: Center(
                            child: Icon(Iconsax.more),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Processing Your",
                style: textTheme.titleLarge,
              ),
              Text(
                "Payment ",
                style: textTheme.titleLarge,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomButton(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  isExpanded: false,
                  child: const Text('Back To Home'),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(CupertinoPageRoute(
                        builder: (index) => const DashBoardScreen()));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
