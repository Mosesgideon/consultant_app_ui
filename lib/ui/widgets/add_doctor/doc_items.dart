
import 'package:consultant_app_ui/utils/theme/text_theme.dart';
import 'package:flutter/material.dart';

class DocItems extends StatefulWidget {
  const DocItems({Key? key}) : super(key: key);

  @override
  State<DocItems> createState() => _DocItemsState();
}

class _DocItemsState extends State<DocItems> {
  final List<String> txt = ['All', 'Cardiology', 'Dentistry', 'Dermatology'];

  String selectedItem = "All";

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            final bool select = selectedItem == txt[index];
            return InkWell(
              onTap: () {
                setState(() {
                  selectedItem=txt[index];
                });
              },
              child: Card(
                elevation: select ? 1 : 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                shadowColor:
                    select ? Theme.of(context).colorScheme.primary : null,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      txt[index],
                      style: textTheme.titleSmall!.copyWith(
                        fontWeight: FontWeight.w500,
                        color: select
                            ? Theme.of(context).colorScheme.primary
                            : null,
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
