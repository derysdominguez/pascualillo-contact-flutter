import 'package:flutter/material.dart';

class ContactAction extends StatelessWidget {
  const ContactAction({
    super.key,
    required this.label,
    required this.src,
  });

  final String label;
  final String src;

  @override
  Widget build(BuildContext context) {
    return 
    TextButton(onPressed: (){}, child: Row(
      children: [
        Image(height: 25, image: AssetImage(src)),
        SizedBox(width: 20.0),
        Text(
          label,
          style: TextStyle(fontSize: 16.0, color: Colors.black),
        )
      ],
    ));
    // Row(
    //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //   children: [
    //     Image(height: 25, image: AssetImage(src)),
    //     SizedBox(width: 20.0),
    //     Text(
    //       label,
    //       style: TextStyle(fontSize: 16.0),
    //     )
    //   ],
    // );
  }
}
