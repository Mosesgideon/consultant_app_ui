import 'package:flutter/material.dart';

class Headers extends StatefulWidget {
  final String text;
  final IconData icon;

  const Headers({Key? key, required this.text, required this.icon})
      : super(key: key);

  @override
  State<Headers> createState() => _HeadersState();
}

class _HeadersState extends State<Headers> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.text,
          style: Theme.of(context)
              .textTheme.headlineSmall
              ?.copyWith( fontWeight: FontWeight.w600),
        ),
        Stack(
          clipBehavior: Clip.none,
          children: [
            CircleAvatar(
              backgroundColor: Colors.deepOrange,
              radius: 25,
              child: CircleAvatar(
                radius: 24,
                backgroundColor: Colors.white,
                child: Icon(
                  widget.icon,
                  color: Colors.deepOrange,
                ),
              ),
            ),
            const Positioned(
                right: -0,
                top: 5,
                child: CircleAvatar(
                  radius: 5,
                  backgroundColor: Colors.deepOrange,
                )),
          ],
        )
      ],
    );
  }
}
