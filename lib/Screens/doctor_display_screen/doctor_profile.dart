import 'package:flutter/material.dart';
import 'package:medical_clinic_booking_app/Screens/apointment_screen/apointment_screen.dart';



class DoctorProfile extends StatefulWidget {
  const DoctorProfile({super.key});

  @override
  State<DoctorProfile> createState() => _DoctorProfileState();
}

class _DoctorProfileState extends State<DoctorProfile> {
  bool isExpended = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Doctor",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.black
          ),
        ),

        // elevation: 01,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,

        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1), 
          child: Container(
            color: Colors.black12,
            height: 1,
          )
        ),
      ),


      body: SafeArea(
        child: SingleChildScrollView(

          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(18),

                    child: Image.asset(
                      "assets/images/Ali_Uzer_Profile.png",
                      height: 320,
                      width: double.infinity,
                      fit: BoxFit.cover,

                      alignment: Alignment.topCenter,
                    ),
                  ),


                  /// Fav Icon
                  
                  Positioned(
                    top: 14,
                    right: 14,
                    child: Container(
                       height: 42,
                       width: 42,

                       decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,

                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 10,
                            offset: Offset(0, 4)
                          ),
                        ]
                      ),

                      child: Icon(
                        Icons.favorite_border_rounded,
                        color: Colors.blue,
                      ),
                    )
                  )
                ],
              ),


              SizedBox(height: 18.0,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Dr. Ali Uzair",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            // letterSpacing: 1
                          ),
                        ),
                    
                        Text(
                          "Cardiologist and Surgeon",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14.0
                          ),
                        )
                      ],
                    ),
                  ),

                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 24.0,
                      ),

                      Text(
                        "4.9(96 reviews)",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700
                        ),
                      )
                    ],
                  )
                ],
              ),


              SizedBox(height: 40,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,

                children: [
                  Expanded(
                    child: buildStatItem(
                      icon: Icons.person,
                      title: "116+",
                      subtitle: "Patients"
                    ),
                  ),

                  Expanded(
                    child: buildStatItem(
                      icon: Icons.task_outlined, 
                      title: "3+", 
                      subtitle: "Years"
                    ),
                  ),

                  Expanded(
                    child: buildStatItem(
                      icon: Icons.star, 
                      title: "4.9", 
                      subtitle: "Rating"
                    ),
                  ),

                  Expanded(
                    child: buildStatItem(
                      icon: Icons.comment, 
                      title: "90+", 
                      subtitle: "Reviews"
                    ),
                  )
                ],
              ),


              SizedBox(height: 20,),

              Text(
                "About Me",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1
                ),
              ),

              SizedBox(height: 8,),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Dr. Ali Uzair is the top most cardiologist specialist in Crist Hospital in London, UK. He achieved several awards for her wonderful contribution.",
                    maxLines: isExpended ? null : 2,

                    overflow: isExpended ? TextOverflow.visible : TextOverflow.ellipsis,

                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      height: 1.5,
                    ),
                  ),

                  SizedBox(height: 6,),

                  GestureDetector(
                    onTap: (){
                      setState(() {
                        isExpended = !isExpended;
                      });
                    },
                    child: Text(
                      isExpended ? "Read Leass" : "Read More",

                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  )
                ],
              ),


              SizedBox(height: 30.0,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: SizedBox(
                  width: double.infinity,
                  height: 56.0,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                    ),
                    onPressed: (){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (_)=> ApointmentScreen()
                        )
                      );
                    }, 
                    child: Text(
                      "Book Appointment",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 1
                      ),
                    )
                  ),
                ),
              )
            ],
          ),
        )),
    );
  }

  Widget buildStatItem({
    required IconData icon,
    required String title,
    required String subtitle,
  }){
    return Column(
      children: [
        Container(
          height: 58,
          width: 58,

          decoration: BoxDecoration(
            color: Color(0xffEEF1FF),
            shape: BoxShape.circle
          ),

          child: Icon(
            icon,
            size: 30,
            color: const Color(0xff4A6CF7),
          ),
        ),

        const SizedBox(height: 10,),

        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
        ),

        const SizedBox(height: 4,),

        Text(
          subtitle,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 14
          ),
        )
      ],
    );
  }
}

