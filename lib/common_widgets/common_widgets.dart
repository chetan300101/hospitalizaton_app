import 'package:flutter/material.dart';
import 'package:hospital_app/constants/Extensions.dart';

import '../constants/SizeConfig.dart';

Widget commonAppBar(context, title) {
  return Container(
    padding: EdgeInsets.only(
        left: 10 * SizeConfig.blockSizeHorizontal,
        right: 15 * SizeConfig.blockSizeHorizontal),
    height: 80 * SizeConfig.blockSizeVertical,
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
        //color: Color.fromRGBO(1, 166, 157, 1),
        ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 35 * SizeConfig.blockSizeVertical,
        ),
        Row(
          children: [
            GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                padding: EdgeInsets.only(left: 3 * SizeConfig.blockSizeHorizontal),
                decoration: BoxDecoration(shape: BoxShape.circle),
                height: 35 * SizeConfig.blockSizeVertical,
                width: 35 * SizeConfig.blockSizeVertical,
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 20 * SizeConfig.blockSizeVertical,
                  color: Colors.black,
                ),
              ),
            ),
            Text(
              title,
              style: 20.DemiBold.Setcolor(Colors.black),
            ),
          ],
        ),
      ],
    ),
  );
}

nextPageNavigationMethod(context, pageName) {
  Navigator.push(
    context,
    PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation) => pageName, transitionDuration: Duration.zero, // No transition animation
    ),
  );
}
