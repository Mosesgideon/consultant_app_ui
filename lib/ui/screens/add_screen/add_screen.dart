import 'package:consultant_app_ui/ui/screens/utils/app_utils.dart';
import 'package:consultant_app_ui/ui/widgets/add_doctor/add_doctor.dart';
import 'package:consultant_app_ui/ui/widgets/general_widgets/search_field.dart';
import 'package:consultant_app_ui/utils/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AddDoctor extends StatefulWidget {
  const AddDoctor({Key? key}) : super(key: key);

  @override
  State<AddDoctor> createState() => _AddDoctorState();
}

class _AddDoctorState extends State<AddDoctor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                InkWell(
                  onTap: () => Navigator.pop(context),
                  child:  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.deepOrange,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 24,
                      child: Icon(Icons.arrow_back,color: Theme.of(context).colorScheme.onBackground,),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'Search Your\nPreffered Doctor',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                ),
              ],
            ),
            const Spacer(),
            const SearchField(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              child: InkWell(
                onTap: () =>
                    AppUtils.showCustomModalBottomSheet(context, const AddDoc()),
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(0.1),
                  ),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Iconsax.home1,
                            size: 16,
                            color: Colors.greenAccent,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Clinic',
                            style: textTheme.titleMedium!.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        'VAF Clinic',
                        style: textTheme.titleLarge!
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'JI. Pucang Clinic,NO 49 Gubeng',
                        style: textTheme.titleSmall!.copyWith(
                            fontWeight: FontWeight.w500,
                            color: Theme.of(context).colorScheme.onBackground),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                       Text(
                        '11.8km from your location',
                        style: textTheme.labelMedium?.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                       Row(
                        children: [
                          Text(
                            '12 doctors ',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color:Theme.of(context).colorScheme.primary),
                          ),
                          const Text(
                            ' in ',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Colors.black87),
                          ),
                          Text(
                            '3 speciality',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Theme.of(context).colorScheme.primary),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
