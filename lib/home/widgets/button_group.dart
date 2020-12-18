import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ButtonGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          RaisedButton.icon(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 10,
            ),
            icon: FaIcon(FontAwesomeIcons.dog),
            label: Text('Dog'),
            onPressed: () {},
          ),
          RaisedButton.icon(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 10,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            icon: FaIcon(FontAwesomeIcons.cat),
            label: Text('Cat'),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
