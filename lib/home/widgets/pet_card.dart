import 'package:adopt_app/domain/pet.dart';
import 'package:adopt_app/pet_page/pet_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PetCard extends StatelessWidget {
  final PetModel petModel;

  const PetCard({Key key, this.petModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PetPage(
                      petModel: petModel,
                    ),
                  ));
            },
            child: Image.asset(
              'assets/images/${petModel.url}',
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        Positioned(
            bottom: 10,
            child: Column(
              children: [
                Text(
                  petModel.name,
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontFamily: GoogleFonts.aBeeZee().fontFamily,
                    shadows: [
                      Shadow(
                          // bottomLeft
                          offset: Offset(-.5, -.5),
                          color: Colors.black),
                      Shadow(
                          // bottomRight
                          offset: Offset(0.5, -0.5),
                          color: Colors.black),
                      Shadow(
                          // topRight
                          offset: Offset(0.5, 0.5),
                          color: Colors.black),
                      Shadow(
                          // topLeft
                          offset: Offset(-0.5, 0.5),
                          color: Colors.black),
                    ],
                  ),
                ),
                Text(
                  '${petModel.age} Years old ',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontFamily: GoogleFonts.aBeeZee().fontFamily,
                  ),
                )
              ],
            ))
      ],
    );
  }
}
