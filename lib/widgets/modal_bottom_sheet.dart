import 'package:flutter/material.dart';

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
                            'Private Room',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 10.0),
                          Text(
                            'Only Invited Friends Can Watch',
                            style: TextStyle(
                              color: Color(0xFF707070),
                              fontSize: 12.0,
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
                                'Start Time',
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
                            'If you don’t choose time the live will start now',
                            style: TextStyle(
                              color: Color(0xFF707070),
                              fontSize: 12.0,
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
                            colors: [
                              const Color(0xff2149fb),
                              const Color(0xffcd20c2),
                              const Color(0xffde1cbd)
                            ],
                            stops: [0.0, 1.0, 1.0],
                          ),
                        ),
                        child: Icon(
                          Icons.add,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        width: 183.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(19.0),
                          gradient: LinearGradient(
                            begin: Alignment(0.57, -1.92),
                            end: Alignment(-0.67, 1.0),
                            colors: [
                              const Color(0xff3e51fa),
                              const Color(0xffe71dc0)
                            ],
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
                        child: Center(
                          child: Text(
                            'Run Stream',
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
                ],
              ),
            ),
          ],
        ),
      );
    },
  );
}
