import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleText extends StatefulWidget {
  final String title;
  final double size;
   Color? colors;
  final FontWeight? fontWeight;
   TitleText({Key? key, required this.title, required this.size, this.colors,  this.fontWeight, }) : super(key: key);

  @override
  State<TitleText> createState() => _TitleTextState();
}

class _TitleTextState extends State<TitleText> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.title,
        textAlign: TextAlign.center,
        style: GoogleFonts.lato(textStyle:  TextStyle(
            fontWeight: widget.fontWeight,
            color:widget.colors??Colors.black45,
            fontSize: widget.size)));
  }
}
