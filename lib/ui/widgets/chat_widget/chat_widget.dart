import 'package:flutter/material.dart';

class Chat_Widget extends StatefulWidget {
  const Chat_Widget({Key? key}) : super(key: key);

  @override
  State<Chat_Widget> createState() => _Chat_WidgetState();
}

class _Chat_WidgetState extends State<Chat_Widget> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child:
        ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) => Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Container(
              padding: const EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child:  Row(
                children: [
                  Stack(clipBehavior: Clip.none,
                      children: [
                        const CircleAvatar(

                          radius: 25,
                          backgroundColor: Colors.deepOrange,
                        ),
                        Positioned(bottom: 8,
                            child: Image.asset(height: 50,width: 50,
                                'assets/png/doc.png')),
                      ]),
                  const SizedBox(
                    width: 10,
                  ),
                  const Column(
                    children: [
                      Text(
                        'dr. Theresa Webb',
                        style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        'hey! idoit am available',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Text(
                    '11:55',
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
        ),
      );




  }
}

