import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hospital_app/bottom_nav_pages/doctor_details.dart';
import 'package:hospital_app/constants/Extensions.dart';
import 'package:hospital_app/constants/SizeConfig.dart';

import '../common_widgets/common_widgets.dart';
import '../constants/app_data_controller.dart';

class PopularDoctorPage extends StatefulWidget {
  const PopularDoctorPage({super.key});

  @override
  State<PopularDoctorPage> createState() => _PopularDoctorPageState();
}

class _PopularDoctorPageState extends State<PopularDoctorPage> {
  List<Map<String, dynamic>> doctorsList = [
    {
      "name": "Dr.Chetan Kale",
      "specialist": "Pediatrician(5years Exp)",
      "experience": "10 year experience",
      "location": "Pimpri-Chinchwad",
      "image": 'assets/svg/home_page/doc_chetan_kale.jpg',
    },
    {
      "name": "Dr.Kiran Doke",
      "specialist": "Pediatrician(5years Exp)",
      "experience": "10 year experience",
      "location": "Pimpri-Chinchwad",
      "image": "assets/svg/home_page/doc_kiran_doke.jpg",
    },
    {
      "name": "Dr.Radha Shelke",
      "specialist": "Pediatrician(5years Exp)",
      "experience": "10 year experience",
      "location": "Pimpri-Chinchwad",
      "image": "assets/svg/home_page/doc_radha_shelke.jpg",
    },
  ];
  AppDataController appDataController = Get.find();
  TextEditingController controller = TextEditingController();
  FocusNode textFieldFocus = FocusNode();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          commonAppBar(context, "Popular Doctors"),
          SizedBox(
            height: 10 * SizeConfig.blockSizeVertical,
          ),
          Container(
            padding: EdgeInsets.only(
                left: 15 * SizeConfig.blockSizeHorizontal,
                right: 15 * SizeConfig.blockSizeHorizontal),
            child: TextField(
              controller: controller,
              focusNode: textFieldFocus,
              decoration: InputDecoration(
                hintText: 'Search by Doctor Name',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)

                        //borderSide: BorderSide.none,
                        ),
                filled: true,
                fillColor: Colors.transparent,
              ),
            ),
          ),
          SizedBox(
            height: 10 * SizeConfig.blockSizeVertical,
          ),
          Container(
            padding: EdgeInsets.only(
                left: 15 * SizeConfig.blockSizeHorizontal,
                right: 15 * SizeConfig.blockSizeHorizontal),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('100 Doctors found in',
                        style: 14.medium.Setcolor(Color(0xff747B88))),
                    Text(
                      'General Physician',
                      style: 14.medium.txtclr,
                    ),
                  ],
                ),
                Spacer(),
                GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(12 * SizeConfig.blockSizeVertical),
                    child: SvgPicture.asset("assets/svg/filter_icon_Svg.svg",
                        fit: BoxFit.fill,
                        color: Color.fromRGBO(171, 170, 187, 1)),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20 * SizeConfig.blockSizeVertical,
          ),
          Container(
            padding: EdgeInsets.only(
                left: 15 * SizeConfig.blockSizeHorizontal,
                right: 15 * SizeConfig.blockSizeHorizontal),
            height: 530 * SizeConfig.blockSizeVertical,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              physics: ClampingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 520 * SizeConfig.blockSizeVertical,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.separated(
                      padding: EdgeInsets.symmetric(
                          vertical: 5 * SizeConfig.blockSizeVertical),
                      physics: AlwaysScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemCount: doctorsList.length,
                      itemBuilder: (context, index) => Container(
                        height: 200 * SizeConfig.blockSizeVertical,
                        width: 342 * SizeConfig.blockSizeHorizontal,
                        padding: EdgeInsets.only(
                            top: 10 * SizeConfig.blockSizeVertical,
                            left: 10 * SizeConfig.blockSizeHorizontal),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 12,
                                  color: Color.fromRGBO(0, 0, 0, 0.15))
                            ],
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(
                                  height: 60 * SizeConfig.blockSizeVertical,
                                  width: 60 * SizeConfig.blockSizeVertical,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(100),
                                    child: Image.asset(
                                      doctorsList[index]['image'],
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10 * SizeConfig.blockSizeVertical,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(
                                      height: 5 * SizeConfig.blockSizeVertical,
                                    ),
                                    Container(
                                      width: 250 * SizeConfig.blockSizeHorizontal,
                                      //color: Colors.red,
                                      child: Row(
                                        children: [
                                          SizedBox(
                                              height: 25 *
                                                  SizeConfig.blockSizeVertical,
                                              child: Text(
                                                doctorsList[index]['name'],
                                                textAlign: TextAlign.center,
                                                maxLines: 1,
                                                style: 16.DemiBold.txtclr,
                                              )),
                                          Spacer(),
                                          Container(
                                            height: 22 * SizeConfig.blockSizeVertical,
                                            width: 40 * SizeConfig.blockSizeHorizontal,
                                            decoration: BoxDecoration(
                                              color: Color(0xffF3F5F7),borderRadius: 5.customRadius
                                            ),
                                            child: Row(
                                              spacing: 1 * SizeConfig.blockSizeHorizontal,
                                              children: [
                                                SizedBox(
                                                  width: 1 * SizeConfig.blockSizeHorizontal,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  size: 13 *
                                                      SizeConfig.blockSizeVertical,
                                                ),
                                                SizedBox(
                                                  width: 2 *
                                                      SizeConfig.blockSizeHorizontal,
                                                ),
                                                Text(
                                                  "4.5",
                                                  style: 10.regular.txtclr,
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                        height:
                                            20 * SizeConfig.blockSizeVertical,
                                        child: Text(
                                          doctorsList[index]['specialist'],
                                          textAlign: TextAlign.center,
                                          maxLines: 1,
                                          style: 12.medium.txtclr,
                                        )),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10 * SizeConfig.blockSizeVertical,
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  top: 10 * SizeConfig.blockSizeVertical),
                              decoration: BoxDecoration(
                                  color: Color(
                                    0xffDCDEE2,
                                  ),
                                  borderRadius: BorderRadius.circular(10)),
                              height: 109 * SizeConfig.blockSizeVertical,
                              child: Column(
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width:
                                            25 * SizeConfig.blockSizeHorizontal,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Available Now',
                                            style: 14.medium.txtclr,
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                color: Color(0xff12B76A),
                                                Icons.videocam,
                                                size: 20 *
                                                    SizeConfig
                                                        .blockSizeVertical,
                                              ),
                                              Text(
                                                'Video Consult',
                                                style: 12.medium.Setcolor(
                                                      Color(0xff12B76A),
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Container(
                                        height:
                                            45 * SizeConfig.blockSizeVertical,
                                        color: Colors.black38,
                                        width:
                                            1 * SizeConfig.blockSizeHorizontal,
                                      ),
                                      Spacer(),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Rs. 600',
                                            style: 14.DemiBold.txtclr,
                                          ),
                                          Text(
                                            'Consultation Fee',
                                            style: 12
                                                .medium
                                                .Setcolor(Color(0xff12B76A)),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width:
                                            25 * SizeConfig.blockSizeHorizontal,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5 * SizeConfig.blockSizeVertical,
                                  ),
                                  GestureDetector(
                                    behavior: HitTestBehavior.translucent,
                                    onTap: () {
                                      textFieldFocus.unfocus();
                                      appDataController.doctorDetailsArray
                                          .clear();
                                      appDataController.doctorDetailsArray
                                          .add(doctorsList[index]);
                                      nextPageNavigationMethod(
                                          context, DoctorDetails());
                                    },
                                    child: Container(
                                      height: 42 * SizeConfig.blockSizeVertical,
                                      width:
                                          296 * SizeConfig.blockSizeHorizontal,
                                      decoration: BoxDecoration(
                                          color: Color(0xff01A69D),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Book Appointment',
                                            style: 14
                                                .DemiBold
                                                .Setcolor(Colors.white),
                                          ),
                                          SizedBox(
                                            width: 5 *
                                                SizeConfig.blockSizeHorizontal,
                                          ),
                                          Icon(
                                            Icons.arrow_forward_ios,
                                            color: Colors.white,
                                            size: 15 *
                                                SizeConfig.blockSizeVertical,
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      separatorBuilder: (BuildContext context, int index) =>
                          Container(
                        height: 10 * SizeConfig.blockSizeHorizontal,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
