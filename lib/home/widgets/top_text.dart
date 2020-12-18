import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopText extends StatelessWidget {
  const TopText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Find Your New',
              style: TextStyle(
                  fontFamily: GoogleFonts.aBeeZee().fontFamily, fontSize: 30),
            ),
            Text(
              'Friend',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: GoogleFonts.aBeeZee().fontFamily,
                  fontSize: 32),
            ),
          ],
        ),
      ),
    );
  }
}
