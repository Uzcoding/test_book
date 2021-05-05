import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_book/config/config.dart';

class MovieCard extends StatelessWidget {
  final String movieName;
  final String movieImage;
  final double cardWidth;
  final double cardHeight;
  final int likes;
  final bool liked;
  final double textSize;

  const MovieCard({
    required this.movieName,
    required this.movieImage,
    required this.cardWidth,
    required this.cardHeight,
    required this.likes,
    this.liked = true,
    required this.textSize,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(10.0),
        width: cardWidth,
        height: cardHeight,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(movieImage),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            SvgPicture.asset(
              IconsPath.info,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Flexible(
                  child: Text(
                    movieName,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: textSize,
                      fontWeight: FontWeight.w600,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Row(
                  children: <Widget>[
                    SvgPicture.asset(
                      liked ? IconsPath.heartActive : IconsPath.heart,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      '${likes}k',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
