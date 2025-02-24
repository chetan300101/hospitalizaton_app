import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hospital_app/constants/ThemeController.dart';

import 'bottom_nav_pages/blogs_page.dart';
import 'bottom_nav_pages/home_page.dart';
import 'bottom_nav_pages/prescription_page.dart';
import 'bottom_nav_pages/profile_page.dart';
import 'bottom_nav_pages/settings_pages/themes_page.dart';
import 'constants/SizeConfig.dart';
import 'constants/app_data_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    AppDataController appDataController = Get.put(AppDataController());
    ThemeController themeController = Get.put(ThemeController());
    return GetMaterialApp(
      darkTheme: ThemeData.light(),
      themeMode: ThemeMode.light,
      title: 'Hospital app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  AppDataController appDataController = Get.find();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getDeviceType();
  }

  getDeviceType() {
    bool iphone = SizeConfig().getDeviceType() == "phone";
  }

  int _selectedIndex = 0, selectedBottomIndex = 0;
  static final List<Widget> _pages = <Widget>[
    HomePage(),
    BlogsPage(),
    PrescriptionPage(),
    ProfilePage(
      toggleTheme: () {},
      isDarkTheme: false,
    ),
  ];

  void _onItemTapped(int index) {
    selectedBottomIndex = _selectedIndex = index;
    appDataController.update(['bottom_nav_bar']);
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppDataController>(
        id: 'bottom_nav_bar',
        builder: (controller) {
          return Scaffold(
              body: _pages[_selectedIndex],
              bottomNavigationBar: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(blurRadius: 12, color: Color.fromRGBO(0, 0, 0, 0.15))
                  ],
                ),
                height: 60 * SizeConfig.blockSizeVertical,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25),
                      topLeft: Radius.circular(25)),
                  child: BottomNavigationBar(
                    backgroundColor: Colors.white,
                    type: BottomNavigationBarType.fixed,
                    items: <BottomNavigationBarItem>[
                      const BottomNavigationBarItem(
                        icon: Icon(Icons.home_outlined),
                        activeIcon: Icon(Icons.home),
                        label: 'Home',
                      ),
                      BottomNavigationBarItem(
                        icon: SvgPicture.asset(
                          'assets/svg/home_page/blog_bottom_nav_icon.svg',
                          color: _selectedIndex == 1
                              ? Colors.blue
                              : Colors.black38,
                        ),
                        label: 'Blogs',
                      ),
                      BottomNavigationBarItem(
                        icon: SvgPicture.asset(
                          'assets/svg/home_page/prescription_icon.svg',
                          color: _selectedIndex == 2
                              ? Colors.blue
                              : Colors.black38,
                        ),
                        label: 'Prescription',
                      ),
                      const BottomNavigationBarItem(
                          icon: Icon(Icons.person_outline),
                          label: 'Profile',
                          activeIcon: Icon(Icons.person)),
                    ],
                    currentIndex: _selectedIndex,
                    unselectedItemColor: Colors.black38,
                    selectedItemColor: Colors.blue,
                    onTap: _onItemTapped,
                    selectedFontSize: 11 * SizeConfig.blockSizeVertical,
                    unselectedFontSize: 11 * SizeConfig.blockSizeVertical,
                  ),
                ),
              ));
        });
  }
}
