import 'package:adopt_app/domain/pet.dart';
import 'package:adopt_app/home/widgets/pet_card.dart';
import 'package:flutter/material.dart';

class CatalogList extends StatelessWidget {
  final List<PetModel> list = [
    PetModel(name: 'Captain', url: 'dog2.jpg', age: 4),
    PetModel(name: 'Buddy', url: 'dog1.jpg', age: 5),
    PetModel(name: 'Chantilly', url: 'cat3.jpg', age: 2),
    PetModel(name: 'Bolt', url: 'dog3.jpg', age: 6),
    PetModel(name: 'Carmen', url: 'cat2.jpg', age: 1),
    PetModel(name: 'Betsy', url: 'cat1.jpg', age: 2),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 1, mainAxisSpacing: 2),
      itemCount: 6,
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return PetCard(
          petModel: list[index],
        );
      },
    ));
  }
}
