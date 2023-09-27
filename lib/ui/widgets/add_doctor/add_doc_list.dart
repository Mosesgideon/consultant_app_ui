import 'package:flutter/material.dart';

class AddDocList extends StatefulWidget {
  const AddDocList({Key? key}) : super(key: key);

  @override
  State<AddDocList> createState() => _AddDocListState();
}

class _AddDocListState extends State<AddDocList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
     height: 200,
      child: ListView.builder(
        itemCount: 2,
        itemBuilder: (BuildContext context, int index) =>
            Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      offset: Offset(1, 1),
                      blurRadius: 2,
                      spreadRadius: 2,
                      color: Colors.grey.withOpacity(0.1))
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                          child: Image.asset(
                              height: 50, width: 50, 'assets/png/doc.png')),
                    ]),
                    const SizedBox(
                      width: 10,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'dr.Theresa Webb',
                          style:
                              TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Dermatology',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Colors.grey),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.deepOrange,
                      size: 17,
                    ),
                    Text('4.5 . ', style: TextStyle(color: Colors.grey)),
                    Text(
                      'Available Mon - Wed, 9:00 - 15:00 ',
                      style: TextStyle(color: Colors.grey,),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
