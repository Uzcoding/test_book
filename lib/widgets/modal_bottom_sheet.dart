import 'package:flutter/material.dart';
import 'package:test_book/config/strings.dart';
import 'package:test_book/config/styles.dart';

Future<void> buildShowModalBottomSheet(BuildContext context, bool isSwitched) {
  return showModalBottomSheet<void>(
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(40.0),
        topRight: Radius.circular(40.0),
      ),
    ),
    context: context,
    builder: (context) {
      return Padding(
        padding: const EdgeInsets.only(
          top: 25.0,
          bottom: 30.0,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                    ),
                    onPressed: () => Navigator.pop(context),
                  ),
                  Text(
                    'Create room',
                    style: TextStyle(
                      color: Color(0xFF3D3A53),
                      fontSize: 22.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    width: 40.0,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0, bottom: 10.0),
                    child: Text(
                      'Copy link',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 45.0,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter URL...',
                        hintStyle: TextStyle(
                            color: Colors.grey.shade400, fontSize: 14.0),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey.shade100,
                            width: 1.0,
                          ),
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(50.0),
                          ),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 30.0,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            AppStrings.privateRoom,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 10.0),
                          Text(
                            AppStrings.privateSub,
                            style: TextStyle(
                              color: Color(0xFF707070),
                              fontSize: 11.0,
                            ),
                          ),
                        ],
                      ),
                      StatefulBuilder(
                        builder: (context, setState) => Switch(
                          activeTrackColor: Colors.grey.shade200,
                          inactiveTrackColor: Colors.grey.shade200,
                          activeColor: Color(0xFFCD20C2),
                          value: isSwitched,
                          onChanged: (value) {
                            setState(() {
                              isSwitched = value;
                            });
                          },
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 30.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: [
                              Text(
                                AppStrings.startTime,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(width: 20.0),
                              Container(
                                width: 70.0,
                                height: 30.0,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xFF9735DB),
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: Center(
                                  child: Text(
                                    '13 : 00',
                                    style: TextStyle(
                                      color: Color(0xFF9735DB),
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 10.0),
                          Text(
                            AppStrings.startTimeSub,
                            style: TextStyle(
                              color: Color(0xFF707070),
                              fontSize: 11.0,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                      StatefulBuilder(
                        builder: (context, setState) => Switch(
                          activeTrackColor: Colors.grey.shade200,
                          inactiveTrackColor: Colors.grey.shade200,
                          activeColor: Color(0xFFCD20C2),
                          value: isSwitched,
                          onChanged: (value) {
                            setState(() {
                              isSwitched = value;
                            });
                          },
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 30.0),
                  Text(
                    'Invite friends',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  SizedBox(
                    width: 30.0,
                    height: 30.0,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                      child: Container(
                        width: 30.0,
                        height: 30.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          gradient: LinearGradient(
                            begin: Alignment(0.84, -1.0),
                            end: Alignment(-0.54, 0.73),
                            colors: AppStyles.buttonGradient,
                            stops: [0.0, 1.0],
                          ),
                        ),
                        child: Icon(
                          Icons.add,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      height: 40.0,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: AppStyles.buttonRadius,
                          ),
                          padding: EdgeInsets.zero,
                        ),
                        child: Ink(
                          decoration: BoxDecoration(
                            borderRadius: AppStyles.buttonRadius,
                            gradient: LinearGradient(
                              begin: Alignment(0.57, -1.92),
                              end: Alignment(-0.67, 1.0),
                              colors: AppStyles.buttonGradient,
                              stops: [0.0, 1.0],
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0x297e54c7),
                                offset: Offset(0, 3),
                                blurRadius: 8,
                              ),
                            ],
                          ),
                          child: Container(
                            alignment: Alignment.center,
                            constraints: BoxConstraints(
                              maxWidth: 180.0,
                              minHeight: 40.0,
                            ),
                            child: Text(
                              AppStrings.runStream,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    },
  );
}
