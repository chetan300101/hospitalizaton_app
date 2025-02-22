import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hospital_app/constants/Extensions.dart';
import 'package:hospital_app/constants/SizeConfig.dart';

import '../constants/Themes.dart';

class ProfilePage extends StatefulWidget {
  final VoidCallback toggleTheme;
  final bool isDarkTheme;

  const ProfilePage(
      {super.key, required this.toggleTheme, required this.isDarkTheme});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<Map<String, dynamic>> docDetails = [
    {
      'image': "assets/svg/setting_profile_svgs/personal_details.svg",
      'title': 'Personal Details',
    },
    {
      'image': "assets/svg/setting_profile_svgs/health_records.svg",
      'title': 'Health Records',
    },
    {
      'image': 'assets/svg/setting_profile_svgs/family_member.svg',
      'title': 'My Family',
    },
    {
      'image': "assets/svg/setting_profile_svgs/notification.svg",
      'title': 'Notification',
    },
    {
      'image': 'assets/svg/setting_profile_svgs/themes.svg',
      'title': 'Themes',
    },
    {
      'image': "assets/svg/setting_profile_svgs/help_support.svg",
      'title': 'Help & Support',
    },
    {
      'image': "assets/svg/setting_profile_svgs/logout.svg",
      'title': 'Log Out',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Column(
        children: [
          Center(
            child: SizedBox(
                height: 100 * SizeConfig.blockSizeVertical,
                width: 100 * SizeConfig.blockSizeVertical,
                child: ClipRRect(
                    borderRadius: 100.customRadius,
                    child: Image.asset(
                        "assets/svg/home_page/doc_kiran_doke.jpg"))),
          ),
          Text(
            "Dr.Kiran Doke",
            style: 18.medium.txtclr,
          ),
          Text(
            "Pediatrician",
            style: 14.medium.color50,
          ),
          Text(
            "kirandoke@gmail.com",
            style: 14.medium.color50,
          ),
          SizedBox(height: 15 * SizeConfig.blockSizeVertical,),
          Container(
            padding: EdgeInsets.only(
                left: 15 * SizeConfig.blockSizeHorizontal,
                right: 10 * SizeConfig.blockSizeHorizontal,
                top: 10 * SizeConfig.blockSizeVertical),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: 10.customRadius,
                boxShadow: [
                  BoxShadow(
                      blurRadius: 12, color: Color.fromRGBO(0, 0, 0, 0.15))
                ]),
            height: 370 * SizeConfig.blockSizeVertical,
            width: 337 * SizeConfig.blockSizeHorizontal,
            child: ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      spacing: 7 * SizeConfig.blockSizeVertical,
                      children: [
                        SizedBox(
                            height: 24 * SizeConfig.blockSizeVertical,
                            width: 24 * SizeConfig.blockSizeVertical,
                            child: SvgPicture.asset(
                              docDetails[index]['image'],
                              color: Themes.color60,
                            )),
                        Container(
                          padding: EdgeInsets.only(
                              top: 7 * SizeConfig.blockSizeVertical),
                          height: 5.6 * SizeConfig.safeBlockVertical,
                          child: Text(
                            docDetails[index]['title'],
                            style: 16.medium.txtclr,
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios,size: 18 * SizeConfig.blockSizeVertical,color: Themes.color,)
                      ],
                    ),
                    Visibility(
                      visible: docDetails.length - 1 != index,
                      child: Container(
                        height: 1 * SizeConfig.blockSizeVertical,
                        color: Themes.color20,
                      ),
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
          )
        ],
      ),
    );
  }
}
