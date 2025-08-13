import 'package:flutter/material.dart';

import '../config.dart';

class YellowButton extends StatelessWidget {
  final double? horzPadding;
  final double? vertPadding;
  final double? elevation;
  final double? width;
  final double? radius;
  final String? text;
  final Function onPressed;

  const YellowButton({
    super.key,
    this.horzPadding,
    this.vertPadding,
    this.width,
    this.elevation,
    this.radius,
    this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: elevation??4,
          backgroundColor: educareYellow,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius??16),
          ),
          padding: EdgeInsets.symmetric(horizontal: horzPadding??68, vertical: vertPadding??10),
        ),
        onPressed: ()=> onPressed,
        child: Text(text??'Get Started', style: TextStyle(fontFamily: 'Gilroy', fontSize: 20, color: Colors.black),)
      ),
    );
  }
}

