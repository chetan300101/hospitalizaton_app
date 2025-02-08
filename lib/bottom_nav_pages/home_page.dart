import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hospital_app/bottom_nav_pages/popular_doctor_page.dart';
import 'package:hospital_app/constants/app_data_controller.dart';

import '../constants/SizeConfig.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool showFilterPopup = false;
  String selectedFilter = "";
  AppDataController appDataController = Get.find();

  List<String> imageArray = [
    'https://www.shutterstock.com/image-photo/profile-photo-attractive-family-doc-600nw-1724693776.jpg',
    "https://t4.ftcdn.net/jpg/02/60/04/09/360_F_260040900_oO6YW1sHTnKxby4GcjCvtypUCWjnQRg5.jpg"
  ];
  List<String> docHeading = ['Make an appointment', "Book Video Consultation"];

  List<String> docTitle = ['Clinic visit', "Quick Consult"];
  List<Map<String, dynamic>> listViewImages = [
    {
      "title": "General Physician",
      "image": 'assets/svg/stratoscope.svg',
      "color": Color.fromRGBO(138, 91, 245, 1)
    },
    {
      "title": "Heart",
      "image": "assets/svg/ecg_heart.svg",
      "color": Color.fromRGBO(132, 204, 19, 1)
    },
    {
      "title": "Skin & Hair",
      "image": "assets/svg/skin_hair.svg",
      "color": Color.fromRGBO(207, 65, 92, 1)
    },
    {
      "title": "Eye & Vision Care",
      "image": "assets/svg/eye_vision.svg",
      "color": Color.fromRGBO(232, 179, 8, 1)
    },
    {
      "title": "General Physician",
      "image": "assets/svg/general_physician.svg",
      "color": Color.fromRGBO(58, 128, 242, 1)
    }
  ];

  List<Map<String, dynamic>> doctorsList = [
    {
      "name": "Dr.Chetan Kale",
      "specialist": "Pediatrician",
      "experience": "10 year experience",
      "location": "Pimpri-Chinchwad",
      "image": 'assets/svg/home_page/doc_chetan_kale.jpg',
    },
    {
      "name": "Dr.Kiran Doke",
      "specialist": "Pediatrician",
      "experience": "10 year experience",
      "location": "Pimpri-Chinchwad",
      "image": "assets/svg/home_page/doc_kiran_doke.jpg",
    },
    {
      "name": "Dr.Radha Shelke",
      "specialist": "Pediatrician",
      "experience": "10 year experience",
      "location": "Pimpri-Chinchwad",
      "image": "assets/svg/home_page/doc_radha_shelke.jpg",
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
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(
                left: 15 * SizeConfig.blockSizeHorizontal,
                right: 15 * SizeConfig.blockSizeHorizontal),
            height: 90 * SizeConfig.blockSizeVertical,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Color.fromRGBO(1, 166, 157, 1),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 35 * SizeConfig.blockSizeVertical,
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Chetan Kale",
                          style: TextStyle(
                              fontSize: 20 * SizeConfig.blockSizeVertical,
                              color: Colors.white),
                        ),
                        Text(
                          "Pune",
                          style: TextStyle(
                              fontSize: 12 * SizeConfig.blockSizeVertical,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 20 * SizeConfig.blockSizeVertical,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 20 * SizeConfig.blockSizeVertical,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: 99 * SizeConfig.blockSizeHorizontal,
                          height: 25 * SizeConfig.blockSizeVertical,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              borderRadius: BorderRadius.circular(
                                  10 * SizeConfig.blockSizeVertical)),
                          child: Center(
                              child: Text(
                            "Select Doctor",
                            style: TextStyle(
                              color: Colors.black,
                                fontSize: 12 * SizeConfig.blockSizeVertical),
                          )),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 600 * SizeConfig.blockSizeVertical,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                physics: ClampingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20 * SizeConfig.blockSizeVertical,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15 * SizeConfig.blockSizeHorizontal,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 12,
                                  color: Color.fromRGBO(0, 0, 0, 0.15))
                            ],
                            borderRadius: BorderRadius.circular(
                                10 * SizeConfig.blockSizeVertical)),
                        padding: EdgeInsets.symmetric(
                            horizontal: 10 * SizeConfig.blockSizeHorizontal,
                            vertical: 5 * SizeConfig.blockSizeVertical),
                        height: 172 * SizeConfig.blockSizeVertical,
                        child: Column(
                          spacing: 5 * SizeConfig.blockSizeVertical,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  //  color: Colors.red,
                                  height: 150 * SizeConfig.blockSizeVertical,
                                  width: 150 * SizeConfig.blockSizeVertical,
                                  padding: EdgeInsets.all(
                                      2 * SizeConfig.blockSizeVertical),
                                  child: SvgPicture.asset(
                                    "assets/svg/blood_donate_new.svg",
                                    fit: BoxFit.fill,
                                    // color: Colors.black
                                  ),
                                ),
                                SizedBox(
                                  width: 150 * SizeConfig.blockSizeHorizontal,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Spacer(),
                                          Container(
                                            alignment: Alignment.topRight,
                                            padding: EdgeInsets.all(2 *
                                                SizeConfig.blockSizeVertical),
                                            child: SvgPicture.asset(
                                                "assets/svg/water_drop.svg",
                                                fit: BoxFit.fill,
                                                color:
                                                    Color.fromRGBO(0, 0, 0, 1)),
                                          ),
                                          Text(
                                            "Appreciating",
                                            style: TextStyle(
                                                fontSize: 10 *
                                                    SizeConfig
                                                        .blockSizeVertical,
                                                color: Colors.black),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 150 *
                                            SizeConfig.blockSizeHorizontal,
                                        height:
                                            140 * SizeConfig.blockSizeVertical,
                                        child: Column(
                                          spacing:
                                              5 * SizeConfig.blockSizeVertical,
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              height: 5 *
                                                  SizeConfig.blockSizeVertical,
                                            ),
                                            Text(
                                              "Thank You For Donating!",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 10 *
                                                      SizeConfig
                                                          .blockSizeVertical,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            Text(
                                              "Blood Donation",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16 *
                                                      SizeConfig
                                                          .blockSizeVertical,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            Text(
                                              "Each person who donates blood can save up to 3 lives. 💉🙏",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 10 *
                                                      SizeConfig
                                                          .blockSizeVertical,
                                                  fontWeight: FontWeight.w400),
                                              maxLines: 2,
                                            ),
                                            Spacer(),
                                            Align(
                                              alignment: Alignment.bottomRight,
                                              child: Container(
                                                height: 30 *
                                                    SizeConfig
                                                        .blockSizeVertical,
                                                width: 115 *
                                                    SizeConfig
                                                        .blockSizeHorizontal,
                                                decoration: BoxDecoration(
                                                    color: Color.fromRGBO(
                                                        1, 166, 157, 1),
                                                    borderRadius: BorderRadius
                                                        .circular(25 *
                                                            SizeConfig
                                                                .blockSizeVertical)),
                                                child: Center(
                                                  child: Text(
                                                    "Find More Donors",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 10 *
                                                            SizeConfig
                                                                .blockSizeVertical),
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 185 * SizeConfig.blockSizeVertical,
                      width: MediaQuery.of(context).size.width,
                      child: GridView.builder(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20 * SizeConfig.blockSizeHorizontal,
                              vertical: 20 * SizeConfig.blockSizeVertical),
                          physics: NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10.0,
                            // Horizontal space between items
                            mainAxisSpacing:
                                10.0, // Vertical space between items
                          ),
                          itemCount: 2,
                          itemBuilder: (context, index) => Container(
                                width: 161 * SizeConfig.blockSizeHorizontal,
                                height: 195 * SizeConfig.blockSizeVertical,
                                decoration: BoxDecoration(color: Colors.white),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  spacing: 4 * SizeConfig.blockSizeVertical,
                                  children: [
                                    Stack(
                                      children: [
                                        ClipRRect(
                                            borderRadius: BorderRadius.circular(10),
                                            child: Image.network(imageArray[index])),
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Container(
                                            margin: EdgeInsets.only(
                                                top: 5 *
                                                    SizeConfig
                                                        .blockSizeVertical,
                                                right: 5 *
                                                    SizeConfig
                                                        .blockSizeHorizontal),
                                            height: 25 *
                                                SizeConfig.blockSizeVertical,
                                            width: 25 *
                                                SizeConfig.blockSizeVertical,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Color.fromRGBO(
                                                    221, 251, 249, 1)),
                                            child: Visibility(
                                                visible: index == 0,
                                                replacement: Icon(
                                                  Icons.video_call,
                                                  color: Color.fromRGBO(
                                                      1, 166, 157, 1),
                                                ),
                                                child: Icon(
                                                  Icons.add,
                                                  color: Color.fromRGBO(
                                                      1, 166, 157, 1),
                                                )),
                                          ),
                                        )
                                      ],
                                    ),
                                    Text(
                                      docTitle[index],
                                      style: TextStyle(
                                          fontSize: 16 * SizeConfig.blockSizeVertical,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black),
                                    ),
                                    Row(
                                      spacing:
                                          5 * SizeConfig.blockSizeHorizontal,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          docHeading[index],
                                          style: TextStyle(
                                              fontSize: 11 * SizeConfig.blockSizeVertical,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black),
                                        ),
                                        Icon(
                                          Icons.arrow_forward,
                                          size:
                                              15 * SizeConfig.blockSizeVertical,
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              )),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: 20 * SizeConfig.blockSizeHorizontal,
                        ),
                        Text(
                          'Browse By Specialization',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15 * SizeConfig.blockSizeVertical,
                              fontWeight: FontWeight.w600),
                        ),
                        Spacer(),
                        Text(
                          'See all',
                          style: TextStyle(
                              fontSize: 14 * SizeConfig.blockSizeVertical,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(1, 166, 157, 1)),
                        ),
                        SizedBox(
                          width: 10 * SizeConfig.blockSizeHorizontal,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10 * SizeConfig.blockSizeVertical,
                    ),
                    SizedBox(
                      height: 100 * SizeConfig.blockSizeVertical,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.separated(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20 * SizeConfig.blockSizeHorizontal,
                            vertical: 5 * SizeConfig.blockSizeVertical),
                        physics: AlwaysScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: listViewImages.length,
                        itemBuilder: (context, index) => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                  color: listViewImages[index]['color'],
                                  borderRadius: BorderRadius.circular(10)),
                              height: 50 * SizeConfig.blockSizeVertical,
                              width: 50 * SizeConfig.blockSizeVertical,
                              child: SvgPicture.asset(
                                  listViewImages[index]['image']),
                            ),
                            SizedBox(
                                height: 30 * SizeConfig.blockSizeVertical,
                                width: 60 * SizeConfig.blockSizeHorizontal,
                                child: Text(
                                  listViewImages[index]['title'],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.black,fontSize: 12 * SizeConfig.blockSizeVertical),
                                  maxLines: 2,
                                ))
                          ],
                        ),
                        separatorBuilder: (BuildContext context, int index) =>
                            Container(
                          width: 25 * SizeConfig.blockSizeHorizontal,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10 * SizeConfig.blockSizeVertical,
                    ),
                    SizedBox(
                      // color:Colors.red,
                      height: 445 * SizeConfig.blockSizeVertical,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 20 * SizeConfig.blockSizeHorizontal,
                              ),
                              Text(
                                "Popular Doctor",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16 * SizeConfig.blockSizeVertical),
                              ),
                              Spacer(),
                              GestureDetector(
                                behavior: HitTestBehavior.translucent,
                                onTap: (){
                                  Get.to(PopularDoctorPage());
                                },
                                child: Text(
                                  'See all',
                                  style: TextStyle(
                                      fontSize: 14 * SizeConfig.blockSizeVertical,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(1, 166, 157, 1)),
                                ),
                              ),
                              SizedBox(
                                width: 10 * SizeConfig.blockSizeHorizontal,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5 * SizeConfig.blockSizeVertical,
                          ),
                          SizedBox(
                            height: 415 * SizeConfig.blockSizeVertical,
                            width: MediaQuery.of(context).size.width,
                            child: ListView.separated(
                              padding: EdgeInsets.symmetric(
                                  horizontal:
                                      10 * SizeConfig.blockSizeHorizontal,
                                  vertical: 5 * SizeConfig.blockSizeVertical),
                              physics: NeverScrollableScrollPhysics(),
                              scrollDirection: Axis.vertical,
                              itemCount: doctorsList.length,
                              itemBuilder: (context, index) => Container(
                                height: 130 * SizeConfig.blockSizeVertical,
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
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(
                                      height:
                                          115 * SizeConfig.blockSizeVertical,
                                      width:
                                          115 * SizeConfig.blockSizeHorizontal,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                            doctorsList[index]['image']),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10 * SizeConfig.blockSizeVertical,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        SizedBox(
                                            height: 25 *
                                                SizeConfig.blockSizeVertical,
                                            child: Text(
                                              doctorsList[index]['name'],
                                              textAlign: TextAlign.center,
                                              maxLines: 1,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16 *
                                                      SizeConfig
                                                          .blockSizeVertical,
                                                  fontWeight: FontWeight.w600),
                                            )),
                                        SizedBox(
                                            height: 20 *
                                                SizeConfig.blockSizeVertical,
                                            child: Text(
                                              doctorsList[index]['specialist'],
                                              textAlign: TextAlign.center,
                                              maxLines: 1,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12 *
                                                      SizeConfig
                                                          .blockSizeVertical,
                                                  fontWeight: FontWeight.w400),
                                            )),
                                        SizedBox(
                                            height: 20 *
                                                SizeConfig.blockSizeVertical,
                                            child: Text(
                                              doctorsList[index]['experience'],
                                              textAlign: TextAlign.center,
                                              maxLines: 1,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12 *
                                                      SizeConfig
                                                          .blockSizeVertical,
                                                  fontWeight: FontWeight.w400),
                                            )),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        SizedBox(
                                          //color: Colors.red,
                                          width: 210 *
                                              SizeConfig.blockSizeHorizontal,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.location_on_rounded,
                                                color: Colors.black,
                                                size: 15 *
                                                    SizeConfig
                                                        .blockSizeVertical,
                                              ),
                                              Container(
                                                  padding:
                                                      EdgeInsets.only(top: 2),
                                                  height: 20 *
                                                      SizeConfig
                                                          .blockSizeVertical,
                                                  child: Text(
                                                    doctorsList[index]
                                                        ['location'],
                                                    textAlign: TextAlign.center,
                                                    maxLines: 1,
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 12 *
                                                            SizeConfig
                                                                .blockSizeVertical,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  )),
                                              Spacer(),
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow,
                                                size: 15 *
                                                    SizeConfig
                                                        .blockSizeVertical,
                                              ),
                                              Text("4.5"),
                                              SizedBox(
                                                width: 5 *
                                                    SizeConfig
                                                        .blockSizeHorizontal,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              separatorBuilder:
                                  (BuildContext context, int index) =>
                                      Container(
                                height: 10 * SizeConfig.blockSizeHorizontal,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10 * SizeConfig.blockSizeVertical,
                    ),
                    Container(
                        padding: EdgeInsets.only(left: 20 * SizeConfig.blockSizeHorizontal),
                        child: Text('Learn more about the World of\nDoctors',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16 * SizeConfig.blockSizeVertical,
                              fontWeight: FontWeight.bold,
                              height: 1),
                        )),
                    Center(
                      child: Stack(
                        children: [
                          SizedBox(
                            height: 282 * SizeConfig.blockSizeVertical,
                            width: 342 * SizeConfig.blockSizeHorizontal,
                            child: Image.asset(
                                'assets/svg/home_page/medical_culture.jpg'),
                          ),
                          Positioned(
                            top: 35 * SizeConfig.blockSizeVertical,
                            left: 20 * SizeConfig.blockSizeHorizontal,
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                height: 18 * SizeConfig.blockSizeVertical,
                                width: 96 * SizeConfig.blockSizeHorizontal,
                                child: Center(
                                    child: Text(
                                  "Medical Culture",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize:
                                          10 * SizeConfig.blockSizeVertical),
                                ))),
                          ),
                          Positioned(
                            top: 150 * SizeConfig.blockSizeVertical,
                            left: 20 * SizeConfig.blockSizeHorizontal,
                            child: Container(
                                height: 18 * SizeConfig.blockSizeVertical,
                                //width: 96 * SizeConfig.blockSizeHorizontal,
                                child: Center(
                                    child: Text(
                                  "Explore the World of Medicine",
                                  style: TextStyle(
                                      fontSize:
                                          16 * SizeConfig.blockSizeVertical,
                                      color: Colors.white),
                                ))),
                          ),
                          Positioned(
                            bottom: 80 * SizeConfig.blockSizeVertical,
                            left: 20 * SizeConfig.blockSizeHorizontal,
                            child: Container(
                                // height: 18 * SizeConfig.blockSizeVertical,
                                width: 350 * SizeConfig.blockSizeHorizontal,
                                child: Center(
                                    child: Text(
                                  "Learn about inspiring stories, expert advice, and the latest innovations in healthcare.",
                                  maxLines: 2,
                                  style: TextStyle(
                                      fontSize:
                                          10 * SizeConfig.blockSizeVertical,
                                      color: Colors.white,
                                      height: 1),
                                ))),
                          ),
                          Positioned(
                            bottom: 35 * SizeConfig.blockSizeVertical,
                            left: 20 * SizeConfig.blockSizeHorizontal,
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15)),
                                height: 24 * SizeConfig.blockSizeVertical,
                                width: 82 * SizeConfig.blockSizeHorizontal,
                                child: Center(
                                    child: Text(
                                  "Learn More",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize:
                                          10 * SizeConfig.blockSizeVertical),
                                ))),
                          ),
                        ],
                      ),
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
