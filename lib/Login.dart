import 'package:flutter/material.dart';
import 'package:healfast01/BottomNav/BottomNavigation.dart';

class Login extends StatefulWidget{
  @override
  State<Login> createState() {
   return login();
  }
}

class login extends State<Login>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15,right: 15),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Username",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(22),
                    borderSide: BorderSide(
                      color: Colors.lightBlueAccent
                    )
                  )
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15 ,right: 15),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Password",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.lightBlueAccent
                    ),
                    borderRadius: BorderRadius.circular(22)
                  )
                ),
              ),
            ),

            SizedBox(
              height: 50,
            ),

            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavigation()));
            },
                child: Text(
                    "Submit"
                )
            )
          ],
        ),
      ),
    );
  }

}