import 'package:consultant_app_ui/ui/widgets/home_screen_widget/threads.dart';
import 'package:flutter/material.dart';


class CommunityList extends StatefulWidget {
  const CommunityList({Key? key}) : super(key: key);

  @override
  State<CommunityList> createState() => _CommunityListState();
}

class _CommunityListState extends State<CommunityList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        physics: NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) => Padding(
            padding: const EdgeInsets.all(16.0),
            child: ArticleItem(),
          )
      ),
    );
  }
}
