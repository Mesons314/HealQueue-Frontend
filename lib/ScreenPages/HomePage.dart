import 'package:flutter/material.dart';


class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return homepage();
  }
}

class homepage extends State<HomePage>{

  int myIndex = 0;

  //instead of writing the function inside the onTap we will
  //write it here and then use it in different places
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            SizedBox(
              height: 200,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 65,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text('Profile')
                  ],
                ),
              ),
            ),
            Column(
              children: [
                ListTile(
                  title: Text('Home'),
                  leading: Icon(Icons.home),
                ),
                ListTile(
                  title: Text('Clinics'),
                  leading: Icon(Icons.local_hospital),
                ),
                ListTile(
                  title: Text('Past Records'),
                  leading: Icon(Icons.emergency_recording_sharp),
                ),
                ListTile(
                  title: Text('Help'),
                  leading: Icon(Icons.help),
                ),
                ListTile(
                  title: Text('Logout'),
                  leading: Icon(Icons.logout),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

}
