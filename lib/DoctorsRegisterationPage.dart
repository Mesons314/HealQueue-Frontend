
import 'package:flutter/material.dart';
import 'package:healfast01/BottomNav/BottomNavigation.dart';
import 'package:healfast01/ScreenPages/HomePage.dart';

class DoctorsRegisterationPage extends StatefulWidget{
  const DoctorsRegisterationPage({super.key});

  @override
  State<DoctorsRegisterationPage> createState() {
   return doctorsRegister();
  }
}

class doctorsRegister extends State<DoctorsRegisterationPage>{

  final TextEditingController dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('Doctor Registeration'),
      ),
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
              padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
              child: SizedBox(
                  width: 400,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Name',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                                color: Colors.lightBlueAccent
                            )
                        )
                    ),
                  )
              ),
            ),
        
        
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22)
                    ),
                    child: DropdownMenu<String>(
                        hintText: 'Gender',
                        requestFocusOnTap: true,
                        dropdownMenuEntries: <DropdownMenuEntry<String>>[
                          DropdownMenuEntry(value: '1', label: 'Male'),
                          DropdownMenuEntry(value: '2', label: 'Female'),
                          DropdownMenuEntry(value: '3', label: 'Others')
                        ]
                    ),
                  ),
                ),
        
                Container(
                  width: 200,
                  margin: const EdgeInsets.only(left: 21),
                  child: InkWell(
                    onTap: () async{
                      DateTime? picked = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1900),
                          lastDate: DateTime(2025));
        
                      if(picked != null){
                        setState(() {
                          dateController.text = "${picked.day}/${picked.month}/${picked.year}";
                        });
                      }
                    },
                    child: IgnorePointer(
                      ignoring: true,
                      child: TextField(
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
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    hintText: 'Phone No',
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
                textInputAction: TextInputAction.newline,
                minLines: 1,
                maxLines: null,
                onTap: (){

                },
                decoration: InputDecoration(
                  hintText: 'Address',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Colors.lightBlueAccent
                    )
                  )
                ),
              ),
            ),
        
            Container(
              margin: EdgeInsets.only(top: 15,bottom: 12),
              child: Divider(
                thickness: 2,
                color: Colors.black,
                indent: 10,
                endIndent: 10,
              ),
            ),
            Center(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 10),
                      child: Text(
                        'Clinic Info', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),textAlign: TextAlign.center,)
                  ),
            ),
        
            Padding(
                padding: EdgeInsets.only(left: 10,right: 10),
              child: Container(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Name of the Clinic",
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
        
            SizedBox(
              height: 10,
            ),
        
            Padding(
              padding: EdgeInsets.only(left: 10,right: 10),
              child: Container(
                child: TextField(
                  minLines: 1,
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    hintText: "Address of the Clinic",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
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
              child: Container(
                child: TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    hintText: 'Phone No',
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

            SizedBox(
              height: 40,
            ),
            Center(
              child: SizedBox(
                height: 50,
                width: 120,
                child: ElevatedButton(
                    onPressed: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavigation()));
                    },
                    child: Text('Submit',style: TextStyle(fontSize: 20,),
                    textAlign: TextAlign.center,),
                style: ElevatedButton.styleFrom(
                    elevation: 12,
                  alignment: Alignment.center
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