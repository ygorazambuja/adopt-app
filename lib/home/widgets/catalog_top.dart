import 'package:flutter/material.dart';

class CatalogTop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Species',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                FlatButton(
                  child: Text(
                    'SEE ALL',
                    style: TextStyle(fontWeight: FontWeight.w100),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
