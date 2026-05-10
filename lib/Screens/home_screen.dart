import 'package:flutter/material.dart';
import 'package:medical_clinic_booking_app/Screens/doctor_card.dart';
import 'package:medical_clinic_booking_app/Screens/doctors_data.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final services = [
      {
        "title":"Odontology",
        "image": "assets/images/Vector.png"
      },
      {
        "title":"Neurology",
        "image": "assets/images/BrainVector.png"
      },
      {
        "title":"Cardiology",
        "image":"assets/images/toothVector.png"
      }
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    // profile
                    Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        // color: Colors.white,

                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 12,
                            offset: Offset(0, 5)
                          )
                        ]
                      ),

                      child: CircleAvatar(
                        radius: 24,
                        backgroundImage: AssetImage(
                          "assets/images/profileImage.png"
                        ),
                      ),
                    ),
            
                    IconButton(
                      onPressed: (){},
                      icon: Icon(
                        Icons.notifications_none,
                        size: 30,
                        color: Colors.black,
                      )
                    )
                  ],
                ),

                SizedBox(height: 10,),

                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Hello",
                        style: TextStyle(
                          fontSize: 28,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                        )
                      ),

                      TextSpan(
                        text: " Hamza!",
                        style: TextStyle(
                          fontSize: 28,
                          color: Colors.grey
                        )
                      )
                    ]
                  )
                ),

                SizedBox(height: 10,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Expanded(
                      child: Container(
                        height: 40.0,
                      
                        padding: EdgeInsets.symmetric(horizontal: 8),
                      
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),

                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 10,
                              offset: Offset(0, 4)
                            )
                          ]
                        ),
                      
                        child: TextField(

                          textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                            isDense: true,
                            prefixIcon: Icon(
                              Icons.search_sharp,
                              size: 22,
                            ),

                            hintText: "Search",
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                              color: Colors.grey
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10
                            )
                          ),
                        )
                      ),
                    ),

                    SizedBox(width: 10,),

                    IconButton(
                      onPressed: (){}, 
                      icon: Icon(
                        Icons.list,
                        size: 32,
                        color: Colors.black,
                      )
                    )
                  ],
                ),

                SizedBox(height: 20,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Text(
                      "Services",
                      style: TextStyle(
                        fontSize: 22,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 6,
                        vertical: 2
                      ),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(30),

                        boxShadow: [
                          BoxShadow(
                            color: Colors.black38,
                            blurRadius: 2,
                            offset: Offset(0, 4)
                          )
                        ]
                      ),

                      child: Row(
                        children: [
                          Text(
                            "see all",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500
                            ),
                          ),
                          SizedBox(width: 2,),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 14,
                            color: Colors.white,
                          )
                        ],
                      ),
                    )
                  ],
                ),

                SizedBox(height: 20,),


                /// Service List
                
                SizedBox(
                  height: 110,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: services.length,
                    separatorBuilder: (_, _)=> const SizedBox(width: 16,), 
                    itemBuilder: (context,index){
                      final item = services[index];

                      return Container(
                        height: 98,

                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: const Color(0xff4A6CF7),
                          borderRadius: BorderRadius.circular(20)
                        ),

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            Image.asset(
                              item["image"] as String,
                              height: 42,
                              width: 42,
                            ),

                            // const SizedBox(height: 10,),

                            Text(
                              item["title"] as String,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w500
                              ),
                            )
                          ],
                        ),
                      );
                    }, 
                  ),
                ),

                const SizedBox(height: 20,),

                const Text(
                  "Top Doctors",
                  style: TextStyle(
                    fontSize: 22,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold
                  ),
                ),


                const SizedBox(height: 30,),

                ListView.builder(
                  shrinkWrap: true,
                  itemCount: doctors.length,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context,index){

                    final doctor = doctors[index];
                    return DoctorCard(
                      doctor: doctor,
                    );
                  }
                )
              ],
            ),
          ),
        )
      ),
    );
  }
}




