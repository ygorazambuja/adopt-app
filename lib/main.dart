import 'package:flutter/material.dart';

import 'home/widgets/button_group.dart';
import 'home/widgets/catalog_top.dart';
import 'home/widgets/pet_list.dart';
import 'home/widgets/text_input.dart';
import 'home/widgets/top_text.dart';
import 'shared/app_bar.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          MainAppBar(),
          TopText(),
          TextInputWidget(),
          ButtonGroup(),
          CatalogTop(),
          CatalogList()
        ],
      ),
    );
  }
}
