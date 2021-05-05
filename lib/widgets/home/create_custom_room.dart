import 'package:flutter/material.dart';
import 'package:test_book/config/config.dart';
import 'package:test_book/widgets/widgets.dart';

class CreateCustomRoom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(
            top: 20.0,
            bottom: 15.0,
          ),
          child: Text(
            AppStrings.createCustomRoom,
            style: AppStyles.homeTitle,
          ),
        ),
        SizedBox(
          height: 140.0,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            itemCount: 4,
            separatorBuilder: (context, index) => SizedBox(width: 15.0),
            itemBuilder: (context, index) {
              if (index == 0) {
                return Container(
                  width: 150.0,
                  height: 140.0,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: ColorPalette.deepBlue,
                    ),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.add,
                        size: 30.0,
                        color: ColorPalette.deepBlue,
                      ),
                      Text(
                        AppStrings.addLink,
                        style: AppStyles.buttonText,
                      ),
                    ],
                  ),
                );
              }
              return MovieCard(
                movieName: 'Cyber Movie',
                movieImage: ImagesPath.cyber,
                liked: true,
                likes: 18,
                cardWidth: size.width / 2,
                cardHeight: 140.0,
                textSize: 20.0,
              );
            },
          ),
        ),
      ],
    );
  }
}
