import 'package:flutter/material.dart';
import 'package:hospital_app/constants/Extensions.dart';
import 'package:hospital_app/constants/SizeConfig.dart';

class ThemePage extends StatefulWidget {
  const ThemePage({Key? key}) : super(key: key);

  @override
  _ThemePageState createState() => _ThemePageState();
}

enum AppTheme { light, dark, system }

class _ThemePageState extends State<ThemePage> {
  AppTheme _selectedTheme = AppTheme.light;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Icon(
              Icons.arrow_back_ios,
              size: 17 * SizeConfig.blockSizeVertical,
            ),
            Text(
              'Themes',
            ),
          ],
        ),
        centerTitle: false,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Theme Modes',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: 10.customRadius,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.4),
                      blurRadius: 12,
                      spreadRadius: 0,
                      offset: const Offset(0, 4),
                    ),
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 8 * SizeConfig.blockSizeVertical),
                  SizedBox(
                    height: 40 * SizeConfig.blockSizeVertical,
                    child: RadioListTile<AppTheme>(
                      title: const Text('Light Mode'),
                      value: AppTheme.light,
                      groupValue: _selectedTheme,
                      onChanged: (value) {
                        setState(() {
                          _selectedTheme = value!;
                        });
                      },
                    ),
                  ),
                  Container(
                    width: 350 * SizeConfig.blockSizeVertical,
                    height: 1 * SizeConfig.blockSizeVertical,
                    color: Colors.black12,
                  ),
                  SizedBox(
                    height: 40 * SizeConfig.blockSizeVertical,
                    child: RadioListTile<AppTheme>(
                      title: const Text('Dark Mode'),
                      value: AppTheme.dark,
                      groupValue: _selectedTheme,
                      onChanged: (value) {
                        setState(() {
                          _selectedTheme = value!;
                        });
                      },
                    ),
                  ),
                  Container(
                    width: 350 * SizeConfig.blockSizeVertical,
                    height: 1 * SizeConfig.blockSizeVertical,
                    color: Colors.black12,
                  ),
                  Container(
                    height: 40 * SizeConfig.blockSizeVertical,
                    child: RadioListTile<AppTheme>(
                      title: const Text('System Default'),
                      value: AppTheme.system,
                      groupValue: _selectedTheme,
                      onChanged: (value) {
                        setState(() {
                          _selectedTheme = value!;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 3, // Assuming "Profile" is the 4th tab
        onTap: (index) {
          // Handle navigation or update state here
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'Blogs',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long),
            label: 'Prescription',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
