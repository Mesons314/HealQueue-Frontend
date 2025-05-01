
import 'package:flutter/material.dart';
import 'package:healfast01/BottomNav/BottomNavigation.dart';
import 'package:healfast01/ScreenPages/HomePage.dart';
import 'package:healfast01/utils/text_editing_controller.dart';
import 'package:healfast01/widgets/text_field.dart';
import 'package:healfast01/widgets/text_field2.dart';
import 'package:healfast01/widgets/text_field3.dart';

class DoctorsRegisterationPage extends StatefulWidget{
  const DoctorsRegisterationPage({super.key});

  @override
  State<DoctorsRegisterationPage> createState() {
   return doctorsRegister();
  }
}

class doctorsRegister extends State<DoctorsRegisterationPage>{

  final TextEditingController dateController = TextEditingController();

  final controller = textEditingController();

  bool passwordVisible1 = true;
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
                  child: CustomTextField(
                      hintText: 'UserName',
                      textEditingController: controller.username,
                      textInputType: TextInputType.text
                  ),
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

                    child: TextField(
                      onTap: () async {
                        DateTime now = DateTime.now();
                        DateTime lastDate = DateTime(2025, 12, 31); // Set a proper last date

                        DateTime? picked = await showDatePicker(
                          context: context,
                          initialDate: now.isAfter(lastDate) ? lastDate : now, // Ensure initialDate is valid
                          firstDate: DateTime(1900),
                          lastDate: lastDate,
                        );

                        if (picked != null) {
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
                child: CustomTextField(
                    hintText: 'Phone No',
                    textEditingController: controller.phoneNo,
                    textInputType: TextInputType.phone
                )
              ),
            ),
        
            SizedBox(
              height: 10,
            ),

            Padding(padding: EdgeInsets.only(left: 11,right: 11),
            child: Container(
              child: TextField(
                obscureText: passwordVisible1,
                decoration: InputDecoration(
                  hintText: 'Password',
                  suffixIcon: IconButton(icon: Icon(passwordVisible1?
                  Icons.visibility
                  :Icons.visibility_off),
                      onPressed: (){
                        setState(() {
                          passwordVisible1 = !passwordVisible1;
                        });
                      }
                      ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)
                  )
                ),
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
                child: CustomTextField2(
                    hintText:"Name of the Clinic",
                    textEditingController: controller.clinicName,
                )
              ),
            ),
        
            SizedBox(
              height: 10,
            ),

        Padding(padding: EdgeInsets.only(right: 11,left: 11),
        child: Container(
          child: CustomTextField2(
              hintText: 'First Name',
              textEditingController: controller.firstName
          )
        ),
        ),

        SizedBox(
          height: 10,
        ),

        Padding(padding: EdgeInsets.only(left: 11,right: 11),
        child: Container(
          child: CustomTextField2(
            hintText: 'Last Name',
            textEditingController: controller.lastName
        )
        ),
        ),
        SizedBox(
          height: 10,
        ),
        
        Padding(padding: EdgeInsets.only(left: 11,right: 11),
        child: Container(
            child: CustomTextField2(
                hintText: 'Degree',
                textEditingController: controller.degree
            )
        ),
        ),

        SizedBox(
          height: 10,
        ),
        Padding(padding: EdgeInsets.only(left: 11,right: 11),
        child: Container(
            child: CustomTextField2(
                hintText: 'Speciality',
                textEditingController: controller.speciality
            )
        ),
        ),
        SizedBox(
          height: 10,
        ),
            Padding(
              padding: EdgeInsets.only(left: 10,right: 10),
              child: Container(
                child: CustomTextField3(
                    hintText: "Address of the Clinic",
                    textEditingController: controller.address,
                    textInputType: TextInputType.multiline,
                  MaxLines: 10,
                )
              ),
            ),

            SizedBox(
              height: 10,
            ),
            
            Padding(
              padding: EdgeInsets.only(left: 10,right: 10),
              child: Container(
                child: CustomTextField(
                    hintText: 'Clinic Phone No',
                    textEditingController: controller.ClinicPhoneNo,
                    textInputType: TextInputType.phone
                )
              ),
            ),
            SizedBox(
              height: 30,
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
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}