import 'package:flutter/material.dart';

class NearbyDoc extends StatefulWidget {
  const NearbyDoc({Key? key}) : super(key: key);

  @override
  State<NearbyDoc> createState() => _NearbyDocState();
}

class _NearbyDocState extends State<NearbyDoc> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) => Center(
          child: Card(
            // decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.only(
                  right: 20, left: 20, top: 16, bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Stack(clipBehavior: Clip.none, children: [
                        const CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.deepOrange,
                        ),
                        Positioned(
                            bottom: 8,
                            top: -29,
                            child: Image.asset(
                                height: 50, width: 50, 'assets/png/doc.png')),
                      ]),
                      const SizedBox(
                        width: 15,
                      ),
                      const Icon(
                        Icons.star,
                        size: 15,
                        color: Colors.deepOrange,
                      ),
                      Text(
                        '4.5',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge
                            ?.copyWith(color: Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Theresa Webb',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Dermatology',
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w500,
                        // fontSize: 12,
                        color: Colors.deepOrange),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Sifoam Hospital',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w500,
                        // fontSize: 12,
                        color: Colors.grey),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
