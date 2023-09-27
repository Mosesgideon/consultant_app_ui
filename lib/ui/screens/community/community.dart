import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../widgets/community/community_item.dart';
import '../../widgets/community/community_list.dart';
import '../../widgets/general_widgets/headers.dart';
import '../../widgets/general_widgets/search_field.dart';
class Community extends StatefulWidget {
  const Community({Key? key}) : super(key: key);

  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  @override
  Widget build(BuildContext context) {
    return   const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Headers(
                text: 'Community\nForum',
                icon: Iconsax.edit_2,
              ),
              SizedBox(
                height: 20,
              ),
              SearchField(),
              SizedBox(
                height: 10,
              ),
              CommunityItems(),
              CommunityList(),
            ],
          ),
        ),
      ),
    );
  }
}
