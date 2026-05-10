import 'package:flutter/material.dart';
import 'package:medical_clinic_booking_app/Screens/doctor_display_screen/doctor_profile.dart';


class DoctorCard extends StatelessWidget {

  final Map doctor;

  const DoctorCard({
    super.key,
    required this.doctor
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (_)=> DoctorProfile())
        );
      },


      child: Container(
        margin: EdgeInsets.only(bottom: 18.0),
        padding: EdgeInsets.all(14.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),

          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 15,
              offset: Offset(0, 5)
            )
          ],
        ),

        child: Row(
          children: [

            ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Image.asset(
                doctor["image"],
                height: 90,
                width: 90,
                fit: BoxFit.cover,
              ),
            ),


            SizedBox(width: 14,),

            ///  Center Info
            
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(
                        child: Text(
                          doctor["name"],
                          maxLines: 1,

                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ),

                      const Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 20,
                      ),

                      Text(
                        doctor["rating"],
                        style: TextStyle(
                          fontWeight: FontWeight.w500
                        ),
                      )
                    ],
                  ),

                  // const SizedBox(height: 6,),

                  Text(
                    doctor["speciality"],
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey.shade500,
                      fontStyle: FontStyle.italic
                    ),
                  ),

                  // const SizedBox(height: 4,),

                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.access_time,
                        size: 14,
                      ),

                      Text(
                        doctor["time"],
                      ),
                    ],
                  ),


                  // const SizedBox(height: 4,),

                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Fee: ${doctor["fee"]}",
                          style: TextStyle(
                            color: Colors.grey.shade500,
                          ),
                        ),
                      ),

                      /// ArrowButton

                      Container(
                        // width: 30,
                        // height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.black
                        ),

                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                      )
                    ],
                  )
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}