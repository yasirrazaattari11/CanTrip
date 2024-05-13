import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class UserTextFields extends StatelessWidget {
  final TextInputType keyboardType;
  final String labelText;
  final bool obscureText;
  final IconData icon;
  final double sizeAll;
  final IconData sicon;
  final Color siconcolor;

  UserTextFields(
      {required this.keyboardType,
        required this.labelText,
        required this.obscureText,
        required this.icon,
        required this.sizeAll,
        required this.sicon,
        required this.siconcolor
      });


  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.start,
      textInputAction: TextInputAction.none,
      obscureText: obscureText,
      autofocus: false,
      style: GoogleFonts.poppins(fontSize: sizeAll),
      keyboardType: keyboardType,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        fillColor: Color(0xfff7f7f7),
        filled: true,
        suffixIcon: Icon(
          sicon,
          size: sizeAll,
        ),
        suffixIconColor: siconcolor,
        prefixIcon: Icon(
          icon,
          size: sizeAll,
        ),
        prefixIconColor: Colors.grey,
        label: Text(
          labelText,
        ),
        labelStyle: GoogleFonts.poppins(fontSize: 15, color: Colors.grey),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
