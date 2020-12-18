import 'package:flutter/material.dart';

class PetInfoCard extends StatelessWidget {
  final String attribute;
  final Icon icon;
  final Color bgColor;

  const PetInfoCard({Key key, this.attribute, this.icon, this.bgColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        width: 100,
        height: 100,
        color: bgColor,
        child: Column(
          children: [
            icon,
            Text(attribute),
          ],
        ),
      ),
    );
  }
}
