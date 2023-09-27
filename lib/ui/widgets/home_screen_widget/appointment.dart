import 'package:flutter/material.dart';

class AppointmentWidget extends StatefulWidget {
  const AppointmentWidget({Key? key}) : super(key: key);

  @override
  State<AppointmentWidget> createState() => _AppointmentWidgetState();
}

class _AppointmentWidgetState extends State<AppointmentWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(

          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                blurRadius: 1,
                spreadRadius: 1,
                color: Colors.grey.withOpacity(0.1),
                offset: const Offset(0, 1))
          ]),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Next Appointment',
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w500,

                      color: Theme.of(context).colorScheme.tertiary),
                ),
                const SizedBox(
                  height: 10,
                ),
                 Text(
                  'Mon, July 25th 2023',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w500, ),
                ),
                const SizedBox(
                  height: 5,
                ),
                 Row(
                  children: [
                    const   Icon(
                      Icons.arrow_forward_rounded,
                      color: Colors.deepOrange,
                      size: 15,
                    ),
                    const  SizedBox(
                      width: 5,
                    ),
                    Text(
                      '10:00 - 11:00',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.w500, ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),


          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10))),
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'dr. Courtney Henry',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w500,

                          color: Colors.white),
                    ),
                        Text(
                      'RSUD Lamongin',
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w400,

                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              const Positioned(
                right: 25,
                top: -25,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                  child: CircleAvatar(
                    radius: 29,
                    backgroundColor: Colors.deepOrange,
                    child: Icon(
                      Icons.arrow_right_alt,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

            ],
          )
        ],
      ),
    );
  }
}
