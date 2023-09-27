import 'package:consultant_app_ui/utils/theme/text_theme.dart';
import 'package:flutter/material.dart';
class ProfileThreads extends StatefulWidget {
  const ProfileThreads({Key? key}) : super(key: key);

  @override
  State<ProfileThreads> createState() => _ProfileThreadsState();
}

class _ProfileThreadsState extends State<ProfileThreads> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
      physics: BouncingScrollPhysics(),
        shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemBuilder: (BuildContext context, int index)=> Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
                       ),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Accident and Injuries',
                    style: textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w500,
                        color: Colors.green),
                  ),
                  const Icon(Icons.more_horiz_outlined)
                ],
              ),
              const SizedBox(
                height: 10,
              ),
               Text(
                'Hand/Wrist/Forearm injury that',
                style: textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w500, fontSize: 18),
              ),
              Text(
                'won\'t go away',
                style:  textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w500,color: Colors.grey),
              ),


            ],
          ),
    ),
        ),
      ),

    );
  }
}
