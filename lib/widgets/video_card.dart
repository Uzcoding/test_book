import 'package:flutter/material.dart';

class VideoCard extends StatelessWidget {
  final String videoImage;
  final String videoTitle;
  final double cardWidth;
  final double cardHeight;

  const VideoCard({
    required this.videoImage,
    required this.videoTitle,
    required this.cardWidth,
    this.cardHeight = 140.0,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(20.0),
        width: cardWidth,
        height: cardHeight,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(videoImage),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.video_call,
              size: 30.0,
              color: Colors.white,
            ),
            const SizedBox(width: 5.0),
            Text(
              videoTitle,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
    );
  }
}
