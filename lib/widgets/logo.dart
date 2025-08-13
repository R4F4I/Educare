import 'package:educare/config.dart';
import 'package:flutter/material.dart';

class EducareLogo extends StatelessWidget {
  final double size;
  const EducareLogo({
    super.key,
    this.size=90,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: size, // The base size
          child: Stack(
            children: [
              Positioned(
                child: SizedBox( // ellipse yellow
                  height: size * 1.33, // Ratio: 120 / 90 ≈ 1.33
                  width: size * 0.67,  // Ratio: 60 / 90 ≈ 0.67
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: educareYellow,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(size * 0.67), // Ratio: 60 / 90 ≈ 0.67
                        topLeft: Radius.circular(size * 0.67),   // Ratio: 60 / 90 ≈ 0.67
                      ),
                    ),
                  ),
                )
              ),
              Positioned(
                top: size * 0.31, // Ratio: 28 / 90 ≈ 0.31
                left: size * 0.33, // Ratio: 30 / 90 ≈ 0.33
                child: SizedBox( // outline box
                  height: size * 0.72, // Ratio: 65 / 90 ≈ 0.72
                  width: size * 0.67,  // Ratio: 60 / 90 ≈ 0.67
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: size * 0.022, // Ratio: 2 / 90 ≈ 0.022
                      ),
                      color: Colors.transparent,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: size * 0.31, // Ratio: 28 / 90 ≈ 0.31
                left: size * 0.39, // Ratio: 35 / 90 ≈ 0.39
                child: Text(
                  'Ed',
                  style: TextStyle(fontFamily: 'Poppins', fontSize: size * 0.5), // Ratio: 45 / 90 = 0.5
                ),
              ),
            ],
          ),
        ),
        Text(
          'ucare',
          style: TextStyle(fontFamily: 'Poppins', fontSize: size * 0.5), // Ratio: 45 / 90 = 0.5
        ),
      ],
    );
  }
}