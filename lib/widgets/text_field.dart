import 'package:flutter/material.dart';

class EducareTextField extends StatelessWidget {
  final String? label;
  const EducareTextField({
    super.key,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Color(0xffC4D7FF),
          )
        ),
        filled: true,
        fillColor: Colors.white,
            
        label: Text(label??'label', style: TextStyle(fontFamily: 'Poppins', color: Color.fromARGB(125, 0, 0, 77))),
      ),
    );
  }
}