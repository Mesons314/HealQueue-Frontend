import 'package:flutter/material.dart';
import 'package:healfast01/BottomNav/BottomNavigation.dart';
import 'package:healfast01/ScreenPages/HomePage.dart';

class UserRegisteration extends StatefulWidget{
  @override
  State<UserRegisteration> createState() {
    return userRegisteration();
  }
}

class userRegisteration extends State<UserRegisteration>{

  final TextEditingController dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Registeration'),
      ),
      backgroundColor: Colors.grey,
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10,bottom: 10),
              child: const Center(
                  child: Text('Personal Info', textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),)),
            ),

            Padding(
                padding: EdgeInsets.only(left: 10,right: 10,bottom: 10),
              child: SizedBox(
                width: 400,
                child: TextField(
                decoration: InputDecoration(
                  hintText: 'Name',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.lightBlueAccent
                    ),
                    borderRadius: BorderRadius.circular(12)
                  )
                ),
                ),
              ),
            ),

            Row(
              children: [
                Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: DropdownMenu<String>(
                      hintText: 'Gender',
                      requestFocusOnTap: true,
                      dropdownMenuEntries: <DropdownMenuEntry<String>>[
                        DropdownMenuEntry(value: '1', label: 'Male'),
                        DropdownMenuEntry(value: '1', label: 'Female'),
                        DropdownMenuEntry(value: '1', label: 'Other')
                      ],
                    )
                ),

               Container(
                 margin: EdgeInsets.only(left: 21),
                 width: 200,
                 child: InkWell(

                     child: TextField(
                       onTap: () async{
                         DateTime now = DateTime.now();
                         DateTime lastDate = DateTime(2025,12,31);

                         DateTime? picked = await showDatePicker(
                             context: context,
                             initialDate: now.isAfter(lastDate)?lastDate: now,
                             firstDate: DateTime(1900),
                             lastDate: lastDate
                         );
                         if(picked != null){
                           setState(() {
                             dateController.text = "${picked.day}/${picked.month}/${picked.year}";
                           });
                         }
                       },
                       controller: dateController,
                       decoration: InputDecoration(
                         hintText: "DOB",
                         border: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(12),
                           borderSide: BorderSide(
                             color: Colors.lightBlueAccent
                           )
                         )
                       ),
                       readOnly: true,
                     ),

                 ),
               )
              ],
            ),

            const SizedBox(
              height: 10,
            ),
            Padding(padding: const EdgeInsets.only(left: 10,right: 10),
              child: Container(
                child: TextField(
                  minLines: 1,
                  maxLines: null,
                  decoration: InputDecoration(
                    hintText: 'Address',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                              color: Colors.lightBlueAccent
                          )
                      )
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
                padding: EdgeInsets.only(left: 10,right: 10),
              child: TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: "Phone No",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Colors.lightBlueAccent
                    )
                  )
                ),
              ),
            ),

            SizedBox(
              height: 50,
            ),

            Center(
              child: SizedBox(
                height: 50,
                width: 120,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 10,
                    alignment: Alignment.center, // Center the content
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> BottomNavigation()));
                  },
                  child: Text(
                    'Submit',
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center, // Center text within the button
                  ),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }

}