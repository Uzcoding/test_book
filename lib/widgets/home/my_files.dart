import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_book/config/config.dart';
import 'package:test_book/widgets/widgets.dart';

class MyFiles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(
            top: 20.0,
            bottom: 15.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(AppStrings.myFiles, style: AppStyles.homeTitle),
              Text(AppStrings.seeMore, style: AppStyles.seeMore),
            ],
          ),
        ),
        SizedBox(
          height: 140.0,
          child: ListView.separated(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: 2,
            separatorBuilder: (context, index) => const SizedBox(width: 15.0),
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
                      SvgPicture.asset(IconsPath.upload),
                      const SizedBox(height: 5.0),
                      Text(
                        AppStrings.upload,
                        style: AppStyles.buttonText,
                      ),
                    ],
                  ),
                );
              }
              return VideoCard(
                cardWidth: 200.0,
                videoImage: ImagesPath.video,
                videoTitle: 'My videos',
              );
            },
          ),
        ),
      ],
    );
  }
}
