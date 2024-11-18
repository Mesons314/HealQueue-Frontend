
import 'package:flutter/material.dart';
import 'package:healfast01/ScreenPages/Clinic.dart';
import 'package:healfast01/ScreenPages/HomePage.dart';
import 'package:healfast01/ScreenPages/Profile.dart';

class BottomNavigation extends StatefulWidget{
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() {
    return bottomNav();
  }
}

class bottomNav extends State<BottomNavigation>{

  int myIndex = 0;
  PageController pageController = PageController();
  void onTaped(int index){
    setState(() {
      myIndex = index;
    });
    pageController.jumpToPage(index);
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(top: 0),
        child: SizedBox(
          height: 70,
          child: BottomNavigationBar(
            onTap: onTaped,
              backgroundColor: Colors.blue,
              type: BottomNavigationBarType.fixed,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.medical_information),
                  label: 'Clinic',
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.info),
                    label: 'Profile'
                )
              ]
          ),
        ),
      ),

      body: PageView(
        controller: pageController,
        children: [
          HomePage(),
          Clinic(),
          Profile()
        ],
      )
    );
  }

}