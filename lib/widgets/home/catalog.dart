import 'package:flutter/material.dart';
import 'package:test_book/config/config.dart';
import 'package:test_book/widgets/widgets.dart';

class Catalog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(AppStrings.category, style: AppStyles.homeTitle),
              Text(AppStrings.seeMore, style: AppStyles.seeMore),
            ],
          ),
        ),
        SizedBox(
          height: 120.0,
          child: ListView.separated(
            itemCount: 3,
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => SizedBox(width: 10.0),
            itemBuilder: (BuildContext context, int index) {
              return MovieCard(
                movieName: 'Abs Workout',
                movieImage: ImagesPath.cyber,
                cardWidth: 160.0,
                cardHeight: 120.0,
                textSize: 16.0,
                likes: 1,
                liked: false,
              );
            },
          ),
        ),
      ],
    );
  }
}
