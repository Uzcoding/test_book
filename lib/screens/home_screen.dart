import 'package:flutter/material.dart';
import 'package:test_book/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              physics: BouncingScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              children: <Widget>[
                SearchInput(),
                CreateCustomRoom(),
                Catalog(),
                MyFiles(),
                const SizedBox(height: 50.0),
              ],
            ),
          ),
          HomeBottomSheet(),
        ],
      ),
    );
  }
}
