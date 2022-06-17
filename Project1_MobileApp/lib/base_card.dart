import 'package:flutter/material.dart';

class BaseCard extends StatelessWidget {

  BaseCard({required this.theColor, required this.catIcon, required this.strText, this.theOnTap });

  final Color theColor;
  final IconData catIcon;
  final String strText;
  final VoidCallback? theOnTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector( // when someone touch this box it will run onTap function
      onTap: theOnTap,
      child: Container(
        // margin: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: theColor,
            borderRadius: BorderRadius.circular(5.0),
        ),
        height: 130,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              catIcon,
              size: 60,
            ),
            const SizedBox(
                height: 10,
                // width: 90,
            ),
            Text(
              strText,
              style: TextStyle(fontSize: 20,  fontWeight: FontWeight.w500),
              )
          ],
        ),
      )
    );
  }
}