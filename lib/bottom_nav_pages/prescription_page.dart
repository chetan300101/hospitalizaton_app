import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_app/constants/Extensions.dart';
import 'package:hospital_app/constants/app_data_controller.dart';

import '../common_widgets/common_widgets.dart';
import '../constants/SizeConfig.dart';
import '../constants/Themes.dart';

class HealthArticle {
  final String doctorName;
  final String imagePath;
  final int likes;
  final int comments;
  final int shares;
  final String shortDescription;
  final String longDescription;

  HealthArticle({
    required this.doctorName,
    required this.imagePath,
    required this.likes,
    required this.comments,
    required this.shares,
    required this.shortDescription,
    required this.longDescription,
  });
}

class PrescriptionPage extends StatefulWidget {
  const PrescriptionPage({super.key});

  @override
  State<PrescriptionPage> createState() => _PrescriptionPageState();
}

class _PrescriptionPageState extends State<PrescriptionPage> {
  AppDataController appDataController = Get.find();
  bool isIconSelected = false, showHistoryMedicineUI = false;

  List<Map<String, dynamic>> docDetails = [
    {
      'name': 'Dr. Chetan Kale',
      'date': '02 April, 2025',
      'medical_title': "Ibuprofen 200 mg or 400 mg",
      'description': "daily, till 12 Jun",
      "timing": "2 pill once a day",
      "tab_description": "Take one hour before eating",
    },
    {
      'name': 'Dr. Chetan Kale',
      'date': '02 April, 2025',
      'medical_title': "Ibuprofen 200 mg or 400 mg",
      'description': "daily, till 12 Jun",
      "timing": "2 pill once a day",
      "tab_description": "Take one hour before eating",
    },
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Handle the press action
            },
          ),
          // Add more IconButton widgets here if needed
        ],
        backgroundColor: Colors.white,
        title:

        Text('Medicines')
        /*Row(
          children: [

            Spacer(),
            GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () {},
              child: Container(
                height: 36 * SizeConfig.blockSizeVertical,
                width: 36 * SizeConfig.blockSizeVertical,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(243, 245, 247, 1)),
                child: Icon(
                  Icons.notifications,
                  color: isIconSelected ? Colors.red : Themes.txtclr,
                  size: 18 * SizeConfig.blockSizeVertical,
                ),
              ),
            )
          ],
        )*/,
      ),
      body: GetBuilder<AppDataController>(
          id: 'page_selection',
          builder: (controller) {
            return Column(
              children: [
                SizedBox(
                  height: 10 * SizeConfig.blockSizeVertical,
                ),
                Center(
                  child: Container(
                    height: 53 * SizeConfig.blockSizeVertical,
                    width: 341 * SizeConfig.blockSizeHorizontal,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(240, 244, 249, 1),
                        borderRadius: 5.customRadius),
                    padding: EdgeInsets.only(
                        top: 3 * SizeConfig.blockSizeVertical,
                        left: 5 * SizeConfig.blockSizeHorizontal,
                        right: 5 * SizeConfig.blockSizeHorizontal),
                    child: Row(
                      children: [
                        GestureDetector(
                          behavior: HitTestBehavior.translucent,
                          onTap: () {
                            showHistoryMedicineUI = !showHistoryMedicineUI;
                            appDataController.update(['page_selection']);
                          },
                          child: Container(
                              width: 160 * SizeConfig.blockSizeHorizontal,
                              height: 39 * SizeConfig.blockSizeVertical,
                              decoration: BoxDecoration(
                                  color: !showHistoryMedicineUI
                                      ? Colors.white
                                      : Colors.transparent,
                                  borderRadius: 5.customRadius),
                              child: Center(
                                  child: Text(
                                "Active Medicines",
                                style: 14.medium.txtclr,
                              ))),
                        ),
                        Spacer(),
                        GestureDetector(
                          behavior: HitTestBehavior.translucent,
                          onTap: () {
                            showHistoryMedicineUI = !showHistoryMedicineUI;
                            appDataController.update(['page_selection']);
                          },
                          child: Container(
                              width: 160 * SizeConfig.blockSizeHorizontal,
                              height: 39 * SizeConfig.blockSizeVertical,
                              decoration: BoxDecoration(
                                  color: showHistoryMedicineUI
                                      ? Colors.white
                                      : Colors.transparent,
                                  borderRadius: 5.customRadius),
                              child: Center(
                                  child: Text(
                                "History",
                                style: 14.medium.txtclr,
                              ))),
                        ),
                      ],
                    ),
                  ),
                ),
                Visibility(
                  visible: !showHistoryMedicineUI,
                  replacement: medicineHistoryWidget(),
                  child: Container(
                    padding: EdgeInsets.only(
                        left: 10 * SizeConfig.blockSizeHorizontal),
                    height: 540 * SizeConfig.blockSizeVertical,
                    child: ListView.separated(
                      itemBuilder: (context, index) {
                        return Column(
                          spacing: 1 * SizeConfig.blockSizeVertical,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              docDetails[index]['name'],
                              style: 16.medium.txtclr,
                            ),
                            Text(docDetails[index]['date']),
                            SizedBox(
                              height: 9 * SizeConfig.blockSizeVertical,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: 10.customRadius,
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 12,
                                        color: Color.fromRGBO(0, 0, 0, 0.15))
                                  ]),
                              margin: EdgeInsets.only(
                                  left: 8 * SizeConfig.blockSizeHorizontal),
                              width: 343 * SizeConfig.blockSizeHorizontal,
                              height: 240 * SizeConfig.blockSizeVertical,
                              child: Column(
                                spacing: 2 * SizeConfig.blockSizeVertical,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(
                                        left:
                                            17 * SizeConfig.blockSizeHorizontal,
                                        top: 18 * SizeConfig.blockSizeVertical),
                                    child: Text(
                                      docDetails[index]['medical_title'],
                                      style: 16.medium.txtclr,
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                        left: 17 *
                                            SizeConfig.blockSizeHorizontal),
                                    child: Text(
                                      docDetails[index]['description'],
                                      style: 14.medium.txtclr,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10 * SizeConfig.blockSizeVertical,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                        left: 17 *
                                            SizeConfig.blockSizeHorizontal),
                                    child: Row(
                                      spacing:
                                          15 * SizeConfig.blockSizeHorizontal,
                                      children: [
                                        Container(
                                          height:
                                              25 * SizeConfig.blockSizeVertical,
                                          width: 102 *
                                              SizeConfig.blockSizeHorizontal,
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(
                                                239, 242, 250, 1),
                                            borderRadius: 10.customRadius,
                                          ),
                                          child: Center(
                                              child: Text(
                                            docDetails[index]['timing'],
                                            style: 11.medium.txtclr,
                                          )),
                                        ),
                                        Container(
                                          height:
                                              25 * SizeConfig.blockSizeVertical,
                                          width: 170 *
                                              SizeConfig.blockSizeHorizontal,
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(
                                                239, 242, 250, 1),
                                            borderRadius: 10.customRadius,
                                          ),
                                          child: Center(
                                              child: Text(
                                            docDetails[index]
                                                ['tab_description'],
                                            style: 11.medium.txtclr,
                                          )),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5 * SizeConfig.blockSizeVertical,
                                  ),
                                  Container(
                                      width:
                                          350 * SizeConfig.blockSizeHorizontal,
                                      height: 1 * SizeConfig.blockSizeVertical,
                                      color: Color.fromRGBO(217, 217, 217, 1)),
                                  SizedBox(
                                    height: 5 * SizeConfig.blockSizeVertical,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                        left:
                                            17 * SizeConfig.blockSizeHorizontal,
                                        top: 5 * SizeConfig.blockSizeVertical),
                                    child: Text(
                                      docDetails[index]['medical_title'],
                                      style: 16.medium.txtclr,
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                        left: 17 *
                                            SizeConfig.blockSizeHorizontal),
                                    child: Text(
                                      docDetails[index]['description'],
                                      style: 14.medium.txtclr,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10 * SizeConfig.blockSizeVertical,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                        left: 17 *
                                            SizeConfig.blockSizeHorizontal),
                                    child: Row(
                                      spacing:
                                          15 * SizeConfig.blockSizeHorizontal,
                                      children: [
                                        Container(
                                          height:
                                              25 * SizeConfig.blockSizeVertical,
                                          width: 102 *
                                              SizeConfig.blockSizeHorizontal,
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(
                                                239, 242, 250, 1),
                                            borderRadius: 10.customRadius,
                                          ),
                                          child: Center(
                                              child: Text(
                                            docDetails[index]['timing'],
                                            style: 11.medium.txtclr,
                                          )),
                                        ),
                                        Container(
                                          height:
                                              25 * SizeConfig.blockSizeVertical,
                                          width: 170 *
                                              SizeConfig.blockSizeHorizontal,
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(
                                                239, 242, 250, 1),
                                            borderRadius: 10.customRadius,
                                          ),
                                          child: Center(
                                              child: Text(
                                            docDetails[index]
                                                ['tab_description'],
                                            style: 11.medium.txtclr,
                                          )),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5 * SizeConfig.blockSizeVertical,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            )
                          ],
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          height: 9 * SizeConfig.blockSizeVertical,
                        );
                      },
                      itemCount: docDetails.length,
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }

  Widget medicineHistoryWidget() {
    return Container(
      color: Colors.red,
    );
  }
}
