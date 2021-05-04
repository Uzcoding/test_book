import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_book/widgets/bottomsheet.dart';

class HomeScreen extends StatelessWidget {
  AppBar getAppBar() {
    return AppBar(
      toolbarHeight: 75.0,
      elevation: 0,
      backgroundColor: Colors.white,
      leading: Container(
        margin: const EdgeInsets.only(left: 10.0),
        child: Image.asset(
          'assets/images/logo.png',
          fit: BoxFit.contain,
          width: 50.0,
          height: 50.0,
        ),
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.notifications,
            size: 30.0,
            color: Colors.grey[700],
          ),
          onPressed: () {},
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10.0,
            vertical: 10.0,
          ),
          child: Container(
            width: 55.0,
            height: 45.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              color: Colors.grey,
            ),
            child: SvgPicture.asset(
              'assets/icons/logo-white.svg',
              fit: BoxFit.scaleDown,
            ),
          ),
        ),
      ],
    );
  }

  SizedBox getSearchInput() {
    return SizedBox(
      width: 230.0,
      height: 35.0,
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 22.0, right: 10.0),
            child: Icon(Icons.search),
          ),
          hintText: 'Search',
          hintStyle: TextStyle(color: Colors.grey.shade400, fontSize: 14.0),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.shade100,
              width: 1.0,
            ),
            borderRadius: const BorderRadius.all(
              const Radius.circular(15.0),
            ),
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 0.0, horizontal: 0)
                  .copyWith(right: 10.0),
        ),
      ),
    );
  }

  Column getCustomRoom() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(
            top: 20.0,
            bottom: 15.0,
          ),
          child: Text(
            'Create Custom Room',
            style: TextStyle(
              color: Color(0xFF151515),
              fontSize: 28.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Row(
          children: <Widget>[
            Container(
              width: 150.0,
              height: 140.0,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xFF090f85),
                ),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.add,
                    size: 30.0,
                    color: Color(0xFF090f85),
                  ),
                  Text(
                    'Add link',
                    style: TextStyle(
                      color: Color(0xFF0D13A3),
                      fontSize: 12.0,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 15.0),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(20.0),
                height: 140.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/cyber.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    SvgPicture.asset(
                      'assets/icons/info.svg',
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Cyber Movie',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Row(
                          children: <Widget>[
                            SizedBox(
                              width: 45.0,
                              child: SvgPicture.asset(
                                'assets/icons/heart-active.svg',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              '18k',
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
            ),
          ],
        ),
      ],
    );
  }

  Column getCatalog() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Catalog',
                style: TextStyle(
                  color: Color(0xFF151515),
                  fontSize: 28.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                'See more',
                style: TextStyle(
                  color: Color(0xFF4453FA),
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
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
              return Container(
                width: 160.0,
                padding: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/cyber.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    SvgPicture.asset(
                      'assets/icons/info.svg',
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Abs Workout',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Row(
                          children: <Widget>[
                            SvgPicture.asset(
                              'assets/icons/heart.svg',
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(width: 3.0),
                            Text(
                              '1k',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.0,
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Column getMyFiles() {
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
              Text(
                'My Files',
                style: TextStyle(
                  color: Color(0xFF151515),
                  fontSize: 28.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                'See more',
                style: TextStyle(
                  color: Color(0xFF4453FA),
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        Row(
          children: <Widget>[
            Container(
              width: 150.0,
              height: 140.0,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xFF090f85),
                ),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SvgPicture.asset('assets/icons/upload.svg'),
                  const SizedBox(height: 5.0),
                  Text(
                    'Upload',
                    style: TextStyle(
                      color: Color(0xFF0D13A3),
                      fontSize: 12.0,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 15.0),
            Expanded(
              child: Container(
                  padding: const EdgeInsets.all(20.0),
                  height: 140.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/video.png'),
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
                        'My videos',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  )),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            getSearchInput(),
            getCustomRoom(),
            getCatalog(),
            getMyFiles(),
          ],
        ),
      ),
      bottomSheet: HomeBottomSheet(),
    );
  }
}
