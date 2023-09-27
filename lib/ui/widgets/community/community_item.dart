import 'package:flutter/material.dart';

class CommunityItems extends StatefulWidget {
  const CommunityItems({Key? key}) : super(key: key);

  @override
  State<CommunityItems> createState() => _CommunityItemsState();
}

class _CommunityItemsState extends State<CommunityItems> {
  final List<String> txt = [
    'All',
    'General',
    'Covid19',
    'Allergies',
    'Infections'
  ];
  String selectedCategory="All";

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          bool isSelected=selectedCategory==txt[index];
        return GestureDetector(
            onTap:(){
              setState(() {
                selectedCategory=txt[index];
              });
            },
            child: Card(

              elevation: isSelected?0:1,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side:isSelected? BorderSide(color: Theme.of(context).colorScheme.primary):BorderSide.none
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                child: Center(
                  child: Text(
                    txt[index],
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w500,color: Colors.grey),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
