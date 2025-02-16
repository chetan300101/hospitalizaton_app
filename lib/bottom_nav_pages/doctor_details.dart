import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hospital_app/constants/Extensions.dart';
import 'package:hospital_app/constants/SizeConfig.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import '../common_widgets/common_widgets.dart';
import '../constants/Themes.dart';
import '../constants/app_data_controller.dart';

class DoctorDetails extends StatefulWidget {
  const DoctorDetails({super.key});

  @override
  State<DoctorDetails> createState() => _DoctorDetailsState();
}

class _DoctorDetailsState extends State<DoctorDetails> {
  AppDataController appDataController = Get.find();
  int _selectedIndex = 0;

  // The currently selected day
  // Define the start and end of your range
  List<String> timeSlots = [
    "06:00\nPM",
    "06:30\nPM",
    "07:00\nPM",
    "07:30\nPM",
    "08:00\nPM",
    "08:30\nPM",
    "09:00\nPM",
    "09:30\nPM",
  ];

  final List<Map<String, dynamic>> ratingData = [
    {'stars': 5, 'label': 'Excellent', 'progress': 0.75},
    {'stars': 4, 'label': 'Good',      'progress': 0.60},
    {'stars': 3, 'label': 'Average',   'progress': 0.40},
    {'stars': 2, 'label': 'Below',     'progress': 0.20},
    {'stars': 1, 'label': 'Poor',      'progress': 0.10},
  ];
  double _rating = 0;

  @override
  void initState() {
    super.initState();
  }

  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    setState(() {
      if (args.value is PickerDateRange) {
      } else if (args.value is DateTime) {
      } else if (args.value is List<DateTime>) {
      } else {}
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            spacing: 5 * SizeConfig.blockSizeVertical,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              commonAppBar(context, "Doctor details"),
              SizedBox(
                height: 640 * SizeConfig.blockSizeVertical,
                //color: Colors.red,
                child: SingleChildScrollView(
                  physics: ClampingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                          borderRadius: 100.customRadius,
                          child: Image.asset(appDataController
                              .doctorDetailsArray[0]['image'])),
                      Text(
                        "${appDataController.doctorDetailsArray[0]['name']}",
                        style: 18.bold.txtclr,
                      ),
                      Text(
                        "${appDataController.doctorDetailsArray[0]['specialist']}",
                        style: 14.medium.Setcolor(Color(0xff525966)),
                      ),
                      Text(
                        "MBBS, BCS, (Health), MD(Pediatrics),\nDNB (Pediatrics)",
                        style: 14.medium.Setcolor(Color(0xff525966)),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 20 * SizeConfig.blockSizeVertical,
                      ),
                      cardContainer(
                          'assets/svg/doctor_details/experience.svg',
                          "Total Experience",
                          "05+ Years",
                          "Rating",
                          "4.9 (5)",
                          0),
                      SizedBox(
                        height: 5 * SizeConfig.blockSizeVertical,
                      ),
                      cardContainer(
                          'assets/svg/doctor_details/currency_icon.svg',
                          "RS. 600",
                          "Consultation fee",
                          "",
                          "",
                          1),
                      SizedBox(
                        height: 15 * SizeConfig.blockSizeVertical,
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.only(
                          left: 15 * SizeConfig.blockSizeHorizontal,
                        ),
                        child: Text(
                          "Available Time",
                          style: 14.DemiBold.txtclr,
                        ),
                      ),
                      SizedBox(
                        height: 5 * SizeConfig.blockSizeVertical,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: 10.customRadius,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.4),
                              blurRadius: 12,
                              spreadRadius: 0,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        height: 273 * SizeConfig.blockSizeVertical,
                        width: 339 * SizeConfig.blockSizeHorizontal,
                        child: Column(
                          children: [
                            Container(
                              color: Colors.transparent,
                              height: 85 * SizeConfig.blockSizeVertical,
                              child: SfDateRangePicker(
                                backgroundColor: Colors.transparent,
                                view: DateRangePickerView.month,
                                monthFormat: 'MMMM',
                                onSelectionChanged: _onSelectionChanged,
                                selectionMode:
                                    DateRangePickerSelectionMode.range,
                                monthViewSettings:
                                    DateRangePickerMonthViewSettings(
                                  numberOfWeeksInView: 1,
                                  showTrailingAndLeadingDates: false,
                                ),
                                headerStyle: DateRangePickerHeaderStyle(
                                    backgroundColor: Colors.transparent),
                                initialSelectedRange: PickerDateRange(
                                    DateTime.now()
                                        .subtract(const Duration(days: 0)),
                                    DateTime.now()
                                        .add(const Duration(days: 0))),
                              ),
                            ),
                            Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal:
                                        12 * SizeConfig.blockSizeHorizontal),
                                height: 130 * SizeConfig.blockSizeVertical,
                                child: GridView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  padding: EdgeInsets.only(
                                      top: 15 * SizeConfig.blockSizeVertical),
                                  itemCount: timeSlots.length,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 4,
                                    mainAxisSpacing:
                                        15 * SizeConfig.blockSizeVertical,
                                    crossAxisSpacing:
                                        5 * SizeConfig.blockSizeHorizontal,
                                    childAspectRatio: 1.5 *
                                        SizeConfig
                                            .blockSizeVertical, // adjust to your needs
                                  ),
                                  itemBuilder: (context, index) {
                                    final time = timeSlots[index];
                                    final isSelected = _selectedIndex == index;
                                    return GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          _selectedIndex = index;
                                        });
                                      },
                                      child: Container(
                                        height:
                                            55 * SizeConfig.blockSizeVertical,
                                        width: 100 *
                                            SizeConfig.blockSizeHorizontal,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: isSelected
                                              ? Color(0xff01A69D)
                                              : Color(0xffF3F5F7),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          border: isSelected
                                              ? Border.all(
                                                  color: Colors.teal, width: 2)
                                              : null,
                                        ),
                                        child: Text(
                                          time,
                                          textAlign: TextAlign.center,
                                          style: 12.regular.Setcolor(isSelected
                                              ? Colors.white
                                              : Colors
                                                  .black) /*TextStyle(

                                        color: isSelected
                                            ? Colors.white
                                            : Colors.black,
                                        fontWeight: FontWeight.w500,
                                      )*/
                                          ,
                                        ),
                                      ),
                                    );
                                  },
                                )),
                            Container(
                              height: 43 * SizeConfig.blockSizeVertical,
                              decoration: BoxDecoration(
                                  color: Color(0xffF3F5F7),
                                  borderRadius: 5.customRadius),
                              width: 306 * SizeConfig.blockSizeHorizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "View all availability",
                                    style: 14.DemiBold.txtclr,
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Themes.txtclr,
                                    size: 18 * SizeConfig.blockSizeVertical,
                                  )
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
                        height: 10 * SizeConfig.blockSizeVertical,
                      ),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15 * SizeConfig.blockSizeHorizontal),
                          alignment: Alignment.topLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "What patients are saying",
                                style: 14.bold.txtclr,
                              ),
                              Row(
                                spacing: 5 *SizeConfig.blockSizeHorizontal,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "4.5",
                                    style: 18.medium.txtclr,
                                  ),

                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(top: 4 * SizeConfig.blockSizeVertical),
                                        height: 30 * SizeConfig.blockSizeVertical,
                                        child: RatingBar.builder(
                                          initialRating: _rating,
                                          minRating: 1,
                                          // or 0, if you allow 0
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemSize: 20 * SizeConfig.blockSizeVertical,
                                          itemCount: 5,
                                          itemPadding: EdgeInsets.symmetric(
                                              horizontal: 0.5 *
                                                  SizeConfig.blockSizeHorizontal),
                                          itemBuilder: (context, _) => Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                            size: 12 * SizeConfig.blockSizeVertical,
                                          ),
                                          onRatingUpdate: (rating) {
                                            setState(() {
                                              _rating = rating;
                                            });
                                          },
                                        ),
                                      ),
                                      Text("500 Reviews",style: 14.DemiBold.Setcolor(Color(0xff93939E)),)
                                    ],
                                  ),

                                  Spacer(),
                                  Container(
                                    height: 30 * SizeConfig.blockSizeVertical,
                                    width: 115 * SizeConfig.blockSizeHorizontal,
                                    decoration: BoxDecoration(
                                      borderRadius: 25.customRadius,
                                      color: Color(0xff01A69D)
                                    ),
                                    child: Row(
                                      spacing: 3 * SizeConfig.blockSizeHorizontal,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.add,color: Colors.white,size: 15 * SizeConfig.blockSizeVertical,),
                                        Text("Add review",style: 11.medium.Setcolor(Colors.white),)
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 8 * SizeConfig.blockSizeHorizontal,)
                                ],
                              ),

                              Padding(
                                padding: EdgeInsets.all(8 * SizeConfig.blockSizeVertical),
                                child: Column(
                                  // Display each rating row from 5 to 1
                                  children: ratingData.map((data) {
                                    final starCount = data['stars'] as int;
                                    final label = data['label'] as String;
                                    final progress = data['progress'] as double;

                                    return Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 6.0),
                                      child: Row(
                                        children: [
                                          // Rating number (e.g., 5)
                                          Text(
                                            '$starCount',
                                            style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          const SizedBox(width: 4),

                                          // Star icon
                                          const Icon(
                                            Icons.star,
                                            color: Colors.grey,
                                            size: 16,
                                          ),
                                          const SizedBox(width: 8),

                                          // Progress bar
                                          Container(
                                            width: 220 * SizeConfig.blockSizeHorizontal,
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.circular(4),
                                              child: LinearProgressIndicator(
                                                // How much of the bar is filled
                                                value: progress,
                                                // Filled portion color
                                                valueColor: const AlwaysStoppedAnimation<Color>(Colors.black),
                                                // Unfilled portion color
                                                backgroundColor: Colors.grey[300],
                                                minHeight: 8,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 8),

                                          // Label text (e.g., "Excellent")
                                          Text(
                                            label,
                                            style: const TextStyle(
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ),

                              SizedBox(height: 10 * SizeConfig.blockSizeVertical,),
                              Container(width: MediaQuery.of(context).size.width,
                              child: Row(children: [
                                ClipRRect(
                                  borderRadius: 100.customRadius,

                                  child:Image.asset(""),
                                )
                              ],),
                              )
                            ],
                          )),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget cardContainer(imagePath, title1, descr1, title2, descr2, index) {
    return Container(
      height: 73 * SizeConfig.blockSizeVertical,
      width: 343 * SizeConfig.blockSizeHorizontal,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.25),
          blurRadius: 4,
          spreadRadius: 0,
          offset: const Offset(0, 4),
        ),
      ], color: Colors.white, borderRadius: 10.customRadius),
      child: Row(
        spacing: 15 * SizeConfig.blockSizeHorizontal,
        children: [
          SizedBox(
            width: 5 * SizeConfig.blockSizeHorizontal,
          ),
          Container(
            height: 32 * SizeConfig.blockSizeVertical,
            width: 32 * SizeConfig.blockSizeVertical,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Color(0xffF3F5F7)),
            padding: EdgeInsets.all(10),
            child: SvgPicture.asset(imagePath),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 5 * SizeConfig.blockSizeVertical,
            children: [
              Text(
                title1,
                style: index == 1
                    ? 16.bold.txtclr
                    : 14.medium.Setcolor(Color(0xff525966)),
              ),
              Text(descr1,
                  style: index == 0
                      ? 16.bold.txtclr
                      : 14.medium.Setcolor(Color(0xff525966))),
            ],
          ),
          Spacer(),
          if (title2 != "")
            Container(
              height: 32 * SizeConfig.blockSizeVertical,
              width: 32 * SizeConfig.blockSizeVertical,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xffF3F5F7)),
              padding: EdgeInsets.all(8),
              child: Icon(
                Icons.star,
                color: Color(0xff525966),
              ),
            ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 5 * SizeConfig.blockSizeVertical,
            children: [
              Text(
                title2,
                style: 14.medium.Setcolor(Color(0xff525966)),
              ),
              Text(descr2, style: 16.bold.txtclr),
            ],
          ),
          SizedBox(
            width: 5 * SizeConfig.blockSizeHorizontal,
          ),
        ],
      ),
    );
  }
}
