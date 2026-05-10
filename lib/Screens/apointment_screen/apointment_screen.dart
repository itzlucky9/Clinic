import 'package:flutter/material.dart';
import 'package:medical_clinic_booking_app/Screens/apointment_screen/days.dart';
import 'package:medical_clinic_booking_app/Screens/apointment_screen/time_data.dart';


class ApointmentScreen extends StatefulWidget {
  const ApointmentScreen({super.key});

  @override
  State<ApointmentScreen> createState() => _ApointmentScreenState();
}

class _ApointmentScreenState extends State<ApointmentScreen> {

  // select day 
  int selectedDay = 2;

  // selected time
  int selectedTime = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
          
                clipBehavior: Clip.none,
                children: [
                  Image.asset(
                    "assets/images/DoctorProfile.jpg",
                    height: 360,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
          
                  // Back Button
          
                  Positioned(
                    top: 4,
                    left: 8,
                    child: IconButton(
                      onPressed: (){
                        Navigator.pop(context);
                      }, 
                      icon: Icon(
                        Icons.arrow_back_ios,
                        size: 18,
                      )
                    )
                  ),
          
                  Positioned(
                    left: 35.0,
                    right: 35.0,
                    bottom: -50,
          
                    child: Container(
          
                      padding: EdgeInsets.all(20.0),
          
                      decoration: BoxDecoration(
                        color: Color(0xff4169F6),
                        borderRadius: BorderRadius.circular(24.0),
          
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.15),
                            blurRadius: 15,
                            offset: const Offset(0, 5),
                          )
                        ]
                      ),
          
                      child: const Column(
                        children: [
                          Text(
                            "Dr. Ali Uzair",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                            ),
                          ),
          
                          SizedBox(height: 4,),
          
                          Text(
                            "Senior Cardiologiest and Surgeon",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
          
          
                          SizedBox(height: 4,),
          
                          Text(
                            "Mirpur Medical College and Hospital",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white
                            ),
                          )
                        ],
                      ),
                    )
                  )
                ],
              ),
          
          
          
              SizedBox(height: 70,),
          
          
              Container(
                padding: EdgeInsets.all(24),
              
                decoration: BoxDecoration(
                  color: Colors.white,
              
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(40),
                  ),
              
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 10,
                      offset: const Offset(0, 4)
                    )
                  ]
                ),
              
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
              
                  children: [
              
                    /// Apointment Title
                    
                    const Text(
                      "Appointment",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold
                      ),
                    ),
              
                    const SizedBox(height: 20,),
              
                    /// Days List
                    
                    SizedBox(
                      height: 90,
                      child: ListView.separated(
              
                        scrollDirection: Axis.horizontal,
                        itemCount: days.length,
                        separatorBuilder: (_,_)=> const SizedBox(width: 12,), 
                        itemBuilder: (context, index){
                          final item = days[index];
              
                          final bool isSelected = selectedDay == index;
              
                          return GestureDetector(
                            onTap: (){
                              setState(() {
                                selectedDay = index;
                              });
                            },
              
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 250),
              
                              width: 70,
              
                              decoration: BoxDecoration(
                                color: isSelected ? const Color(0xff74D0F7) : Colors.white,
              
                                borderRadius: BorderRadius.circular(18.0),
              
                                boxShadow: [
                                  if(isSelected)
                                  BoxShadow(
                                    color: Colors.blue.withOpacity(0.3),
                                    blurRadius: 10,
                                    offset: const Offset(0, 4),
                                  )
                                ]
                              ),
              
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
              
                                children: [
                                  Text(
                                    item["day"],
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
              
                                      color: isSelected? Colors.white :Colors.black,
                                    ),
                                  ),
              
                                  const SizedBox(height: 10,),
              
                                  Text(
                                    item["date"],
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
              
                                      color: isSelected ? Colors.white : Colors.black
                                    ),
                                  )
                                ],
                              ),
                            ),
              
                            
                          );
                        }, 
                      ),
                    ),
              
              
                    const SizedBox(height: 35,),
              
                    /// Available Time
                    /// 
                    
                    const Text(
                      "Available Time",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                      ),
                    ),
              
                    const SizedBox(height: 20,),
              
              
                    /// Time Slots
                    
                    Wrap(
                      spacing: 12,
                      runSpacing: 12,
              
                      children: List.generate(
                        times.length, 
                        (index){
                          final bool isSelected = selectedTime == index;
              
                          return GestureDetector(
                            onTap: (){
                              setState(() {
                                selectedTime = index;
                              });
                            },
                            child: AnimatedContainer(
                              duration: const Duration(microseconds: 250),
              
                              padding: EdgeInsets.symmetric(
                                horizontal: 18,
                                vertical: 12,
                              ),
              
                              decoration: BoxDecoration(
                                color: isSelected ? Color(0xffF2B36D) : Colors.white,
                                
                                borderRadius: BorderRadius.circular(12),
              
                                border: Border.all(
                                  color: Colors.black12,
                                )
                              ),
              
                              child: Text(
                                times[index],
                                style: TextStyle(
                                  color: isSelected?Colors.white : Colors.grey.shade600,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          );
                        }
                      ),
                    ),
              
              
                    const SizedBox(height: 40,),
              
                    SizedBox(
                      width: double.infinity,
                      height: 58,
              
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff4169F6),
              
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(60.0),
                          )
                        ),
                        onPressed: (){}, 
                        child:const Text(
                          "Confirm",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ),
                    )
              
              
                  ],
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}