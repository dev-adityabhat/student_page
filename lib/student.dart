import 'package:flutter/material.dart';
import 'package:studentpage/screens/academic_calender.dart';
import 'package:studentpage/curriculum.dart';
import 'package:studentpage/screens/admission.dart';


import 'screens/results.dart';


class StudentPage extends StatelessWidget {
  const StudentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Column(
         children: [
           //upper part
           Container(
             width: MediaQuery.of(context).size.width,
             height: MediaQuery.of(context).size.height/2.5,
             color: Colors.deepPurple,
             child:Center(
               child: Text("STUDENT DESK",
                 style: TextStyle(
                   decoration: TextDecoration.none,
                   fontSize: 40,

                   fontWeight: FontWeight.w400,
                   color: Colors.white,

                 ),
               ),
             ),

           ),

           //lower part

           Expanded(
             child: Container(
               color: Colors.deepPurple,
               child: Container(
                 width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),



                    )
                  ),


                 child: ListView(
                   children: [
                     Row(
                       children: [
                        Column(
                           children: [
                             Row(
                               mainAxisAlignment: MainAxisAlignment.spaceAround,

                               children: [
                                 HomeCard(
                                   onPress: () {
                                     Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Resultpage()));

                                   },


                                   icon: 'assets/icons/result.png',
                                   title: 'Result',
                                 ),
                                 HomeCard(
                                   onPress: () {
                                     //go to assignment screen here
                                     Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AcademicCalendarScreen()));
                                   },

                                   icon: 'assets/icons/calendar.png',
                                   title: 'Academic Calendar',
                                 ),
                               ],
                             ),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.spaceAround,
                               children: [
                                 HomeCard(
                                   onPress: () {
                                     Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyListView()));

                                   },
                                   icon: 'assets/icons/documents.png',
                                   title: 'Curriculum Screen',
                                 ),
                                 HomeCard(
                                   onPress: () {
                                     Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AdmissionScreen()));

                                   },
                                   icon: 'assets/icons/done.png',
                                   title: 'Admissions',
                                 ),
                               ],
                             ),

                           ],
                         ),
                       ],
                     )
                   ],
                 ),
               ),
             ),
           ),
         ],
       ),
    );
  }
}


class HomeCard extends StatelessWidget {
  const HomeCard(
      {Key? key,
        required this.onPress,
        required this.icon,
        required this.title})
      : super(key: key);
  final VoidCallback onPress;
  final String icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child:  Container(
        margin: EdgeInsets.only(top: 35),
        width: MediaQuery.of(context).size.width/2.2,
        height: MediaQuery.of(context).size.height/5,



        decoration: BoxDecoration(

          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.1),

            ), //BoxShadow
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // SvgPicture.asset(
            //   icon,
            //   height: SizerUtil.deviceType == DeviceType.tablet ? 40.sp : 50.sp,
            //   width: SizerUtil.deviceType == DeviceType.tablet ? 40.sp : 50.sp,
            //   color: Colors.black,
            // ),

            Image.asset(
              icon,
              height: 85.0,
            ),

            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold,letterSpacing: 1.5),
            ),
          ],
        ),
      ),

    );
  }
}


