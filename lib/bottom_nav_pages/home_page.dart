import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/SizeConfig.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15 * SizeConfig.blockSizeHorizontal, right: 15 * SizeConfig.blockSizeHorizontal),
                  height: 219 * SizeConfig.blockSizeVertical,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: Color.fromRGBO(1, 166, 157, 1),),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  SizedBox(height: 30 * SizeConfig.blockSizeVertical,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Chetan Kale", style: TextStyle(fontSize: 20 * SizeConfig.blockSizeVertical, color: Colors.white),),
                      Spacer(),
                      Container(
                        width: 99 * SizeConfig.blockSizeHorizontal,
                        height: 25 * SizeConfig.blockSizeVertical,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            borderRadius: BorderRadius.circular(
                                10 * SizeConfig.blockSizeVertical)
                        ),
                        child: Center(child: Text(
                          "Select Doctor", style: TextStyle(fontSize: 12 *
                            SizeConfig.blockSizeVertical),)),
                      )
                    ],
                  ),
                  Text("Pune", style: TextStyle(
                      fontSize: 12 * SizeConfig.blockSizeVertical,
                      color: Colors.white),),
                  SizedBox(height: 63 * SizeConfig.blockSizeVertical,),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Search for Doctor',
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: SvgPicture.asset("assets/svg/filter_icon_Svg.svg"),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                  ),
                  ],
                )
              ],
            ),
          ),
          ],
        )),)
    ,
    );
  }
}
