import 'package:flutter/material.dart';
import 'package:test_book/widgets/widgets.dart';

class HomeBottomSheet extends StatefulWidget {
  @override
  _HomeBottomSheetState createState() => _HomeBottomSheetState();
}

class _HomeBottomSheetState extends State<HomeBottomSheet> {
  Padding userAddButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25.0),
      child: SizedBox(
        width: 50.0,
        height: 50.0,
        child: ElevatedButton(
          onPressed: () {
            bool isSwitched = false;
            buildShowModalBottomSheet(context, isSwitched);
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
            ),
          ),
          child: Container(
            width: 50.0,
            height: 50.0,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(0.84, -1.0),
                end: Alignment(-0.54, 0.73),
                colors: [
                  const Color(0xff2149fb),
                  const Color(0xffcd20c2),
                  const Color(0xffde1cbd)
                ],
                stops: [0.0, 1.0, 1.0],
              ),
              borderRadius: BorderRadius.circular(50.0),
            ),
            child: Icon(
              Icons.add,
            ),
          ),
        ),
      ),
    );
  }

  Padding getUsers() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Column(
        children: [
          Stack(
            children: [
              CircleAvatar(
                radius: 28.0,
                backgroundImage: AssetImage('assets/images/user.png'),
              ),
              Positioned(
                bottom: 4,
                right: 2,
                child: Container(
                  width: 10.0,
                  height: 10.0,
                  decoration: BoxDecoration(
                    color: Color(0xFF63E143),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 5.0),
          Text(
            'Ally',
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150.0,
      padding: const EdgeInsets.all(25.0).copyWith(bottom: 5.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40.0),
          topRight: Radius.circular(40.0),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -4),
            color: Colors.grey.shade200,
            blurRadius: 6.0,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'My friends',
            style: TextStyle(
              color: Color(0xFF151515),
              fontSize: 28.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: List.generate(4 + 1, (index) {
              if (index == 0) {
                return userAddButton(context);
              }
              return getUsers();
            }),
          )
        ],
      ),
    );
  }
}
