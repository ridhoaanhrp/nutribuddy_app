import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ant_design.dart';
import 'package:iconify_flutter/icons/fluent.dart';

class SearchBarField extends StatelessWidget {
  const SearchBarField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double bodyWidth = MediaQuery.of(context).size.width;
    double bodyHeight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;

    return Container(
      width: bodyWidth * 0.8,
      height: bodyHeight * 0.08,
      padding: EdgeInsets.symmetric(
          horizontal: bodyWidth * 0.04, vertical: bodyHeight * 0.01),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
                color: Colors.grey,
                spreadRadius: 0,
                blurRadius: 5,
                offset: Offset(0, 2))
          ],
          borderRadius: BorderRadius.circular(15)),
      child: Center(
        child: TextField(
          decoration: InputDecoration(
              hintText: "Search...",
              hintStyle: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF4A4A4A))),
              suffixIcon: const Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Iconify(AntDesign.search_outlined),
                    Iconify(Fluent.filter_28_regular)
                  ]),
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none),
        ),
      ),
    );
  }
}
