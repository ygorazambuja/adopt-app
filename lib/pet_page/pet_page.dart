import 'package:adopt_app/domain/pet.dart';
import 'package:adopt_app/pet_page/widgets/pet_data.dart';
import 'package:adopt_app/pet_page/widgets/pet_info_card.dart';
import 'package:adopt_app/pet_page/widgets/pet_photo.dart';
import 'package:adopt_app/shared/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PetPage extends StatelessWidget {
  final PetModel petModel;

  const PetPage({Key key, this.petModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          PetPhoto(
            petModel: petModel,
          ),
          PetData(
            petModel: petModel,
          ),
        ],
      ),
    );
  }
}
