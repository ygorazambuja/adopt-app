import 'package:adopt_app/domain/pet.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PetData extends StatelessWidget {
  final PetModel petModel;

  const PetData({Key key, this.petModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              petModel.name,
              style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  fontFamily: GoogleFonts.aBeeZee().fontFamily),
            ),
            Text(
              '${petModel.age} Months',
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 16,
                  fontFamily: GoogleFonts.aBeeZee().fontFamily),
            )
          ],
        ),
      ),
    );
  }
}
