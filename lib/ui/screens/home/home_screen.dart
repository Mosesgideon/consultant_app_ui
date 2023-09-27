import 'package:consultant_app_ui/ui/widgets/general_widgets/headers.dart';
import 'package:consultant_app_ui/ui/widgets/home_screen_widget/appointment.dart';
import 'package:consultant_app_ui/ui/widgets/home_screen_widget/nearby_doc.dart';
import 'package:consultant_app_ui/ui/widgets/home_screen_widget/threads.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const   SizedBox(
                height: 40,
              ),
              const   Headers(text: 'Home', icon: Iconsax.notification,),
              const  SizedBox(
                height: 20,
              ),
              const   AppointmentWidget(),
              const   SizedBox(
                height: 40,
              ),
              Text(
                'Nearby Doctor',
                style: Theme.of(context).textTheme.titleLarge?.copyWith( fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 30,
              ),
              NearbyDoc(),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Threads You Might Like',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700),
              ),

              Threads(),
            ],
          ),
        ),
      ),
    );
  }
}
