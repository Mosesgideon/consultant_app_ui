import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Threads extends StatefulWidget {
  const Threads({Key? key}) : super(key: key);

  @override
  State<Threads> createState() => _ThreadsState();
}

class _ThreadsState extends State<Threads> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 10,
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) => const Padding(
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          child: ArticleItem(),
        ),
      ),
    );
  }
}

class ArticleItem extends StatefulWidget {
  const ArticleItem({Key? key}) : super(key: key);

  @override
  State<ArticleItem> createState() => _ArticleItemState();
}

class _ArticleItemState extends State<ArticleItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Allergies',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).colorScheme.tertiary),
            ),
            const Icon(Icons.more_horiz_outlined)
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'It has been 2-3 years that i have this spots in my leg',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Text(
              'vioprimhz02 . ',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w500, color: Colors.grey),
            ),
            Text(
              '5h ago ',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w500, color: Colors.grey),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const Row(
          children: [
            Row(
              children: [
                Icon(
                  Iconsax.lovely,
                  size: 15,
                ),
                SizedBox(
                  width: 5,
                ),
                Text('3')
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Row(
              children: [
                Icon(
                  Iconsax.message,
                  size: 15,
                ),
                SizedBox(
                  width: 5,
                ),
                Text('3')
              ],
            ),
          ],
        )
      ],
    );
  }
}

