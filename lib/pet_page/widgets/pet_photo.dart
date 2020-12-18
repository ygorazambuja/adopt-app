import 'package:adopt_app/domain/pet.dart';
import 'package:flutter/material.dart';

class PetPhoto extends StatelessWidget {
  final PetModel petModel;

  const PetPhoto({Key key, this.petModel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    print(AssetImage('assets/images/${petModel.url}'));
    return SliverAppBar(
      elevation: 10,
      expandedHeight: 300,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
            height: 300, child: Image.asset('assets/images/${petModel.url}')),
      ),
    );
  }
}
