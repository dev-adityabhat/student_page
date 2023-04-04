import 'package:flutter/material.dart';
import 'package:studentpage/screens/results.dart';
import 'package:url_launcher/url_launcher.dart';


    class MyListView extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple,
    appBar: AppBar(
    title: Text('CURRICULUM'),
            centerTitle: true,
        backgroundColor: Colors.transparent,
    ),



        body :Center(

            child: Container(
                child: SingleChildScrollView(
                    //for padding
                    physics: BouncingScrollPhysics(),


                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,

                  children: [

                       HomeCard(
                          onPress: () {
                              onPressed: () async {
                                  const url = 'https://gpnashik.ac.in/assets/pdf/curriculum/21/CM21.pdf';
                                  if (await canLaunch(url)) {
                                      await launch(url);
                                  } else {
                                      throw 'Could not launch $url';
                                  }
                              };

                          },


                          icon: 'assets/icons/crclm.png',
                          title: 'Computer\nEngineering',
                      ),

                      HomeCard(
                          onPress: () {
                              onPressed: () async {
                                  const url = 'https://gpnashik.ac.in/assets/pdf/curriculum/21/IF21.pdf';
                                  if (await canLaunch(url)) {
                                      await launch(url);
                                  } else {
                                      throw 'Could not launch $url';
                                  }
                              };

                          },


                          icon: 'assets/icons/crclm.png',
                          title: 'Information\nTechnology',

                      ),


                      HomeCard(
                          onPress: () {
                              onPressed: () async {
                                  const url = 'https://gpnashik.ac.in/assets/pdf/curriculum/21/CE21.pdf';
                                  if (await canLaunch(url)) {
                                      await launch(url);
                                  } else {
                                      throw 'Could not launch $url';
                                  }
                              };

                          },


                          icon: 'assets/icons/crclm.png',
                          title: 'Civil\n Engineering',

                      ),

                      HomeCard(
                          onPress: () {
                              onPressed: () async {
                                  const url = 'https://gpnashik.ac.in/assets/pdf/curriculum/21/EE21.pdf';
                                  if (await canLaunch(url)) {
                                      await launch(url);
                                  } else {
                                      throw 'Could not launch $url';
                                  }
                              };

                          },


                          icon: 'assets/icons/crclm.png',
                          title: 'Electrical\n Engineering',

                      ),

                      HomeCard(
                          onPress: () {
                              onPressed: () async {
                                  const url = 'https://gpnashik.ac.in/assets/pdf/curriculum/21/EL21.pdf';
                                  if (await canLaunch(url)) {
                                      await launch(url);
                                  } else {
                                      throw 'Could not launch $url';
                                  }
                              };

                          },

                          icon: 'assets/icons/crclm.png',
                          title: 'Electronics &\nTelecommunication',

                      ),

                      HomeCard(
                          onPress: () {
                              onPressed: () async {
                                  const url = 'https://gpnashik.ac.in/assets/pdf/curriculum/21/AE21.pdf';
                                  if (await canLaunch(url)) {
                                      await launch(url);
                                  } else {
                                      throw 'Could not launch $url';
                                  }
                              };

                          },

                          icon: 'assets/icons/crclm.png',
                          title: 'Automobile\n Engineering',

                      ),
                      HomeCard(
                          onPress: () {
                              onPressed: () async {
                                  const url = 'https://gpnashik.ac.in/assets/pdf/curriculum/21/PO21.pdf';
                                  if (await canLaunch(url)) {
                                      await launch(url);
                                  } else {
                                      throw 'Could not launch $url';
                                  }
                              };

                          },

                          icon: 'assets/icons/crclm.png',
                          title: 'Polymer\n Engineering',

                      ),HomeCard(
                          onPress: () {
                              onPressed: () async {
                                  const url = 'https://gpnashik.ac.in/assets/pdf/curriculum/21/DD21.pdf';
                                  if (await canLaunch(url)) {
                                      await launch(url);
                                  } else {
                                      throw 'Could not launch $url';
                                  }
                              };

                          },

                          icon: 'assets/icons/crclm.png',
                          title: 'Dress Designing &\nGarments Manf.',

                      ),




                      HomeCard(
                          onPress: () {
                              onPressed: () async {
                                  const url = 'https://gpnashik.ac.in/assets/pdf/curriculum/21/ME21.pdf';
                                  if (await canLaunch(url)) {
                                      await launch(url);
                                  } else {
                                      throw 'Could not launch $url';
                                  }
                              };

                          },


                          icon: "assets/icons/crclm.png",

                          title: 'Mechanical \nEngineering',
                      ),
                      HomeCard(
                          onPress: () {
                              onPressed: () async {
                                  const url = 'https://gpnashik.ac.in/assets/pdf/curriculum/21/ID21.pdf';
                                  if (await canLaunch(url)) {
                                      await launch(url);
                                  } else {
                                      throw 'Could not launch $url';
                                  }
                              };

                          },

                          icon: "assets/icons/crclm.png",

                          title: 'Interior Design &\nDecoration',
                      ),
                      HomeCard(
                          onPress: () {
                              onPressed: () async {
                                  const url = 'https://gpnashik.ac.in/assets/pdf/curriculum/21/MK21.pdf';
                                  if (await canLaunch(url)) {
                                      await launch(url);
                                  } else {
                                      throw 'Could not launch $url';
                                  }
                              };

                          },

                          icon: "assets/icons/crclm.png",

                          title: 'Mechatronics\nEngineering',
                      ),



                  ],
        ),

              ),
            ),


        // body: ListView.builder(
    // itemCount: departments.length,
    // itemBuilder: (BuildContext context, int index) {
    // return ListTile(
    // title: Text(departments[index].name),
    // subtitle: Text(departments[index].curriculum),
    // onTap: () {
    // //  Navigate to curriculum file screen
    // },
    // );
    // },
    // ),
        ),
    );
    }
    }

class HomeCard extends StatelessWidget {
    const HomeCard(
        {Key? key,
            required this.onPress,
            required this.icon,
            required this.title
        })
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
                width: MediaQuery.of(context).size.width/1.2,
                height: MediaQuery.of(context).size.height/9,



                decoration: BoxDecoration(

                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.2),

                        ), //BoxShadow
                    ],
                ),
                child: Row(
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
                            height: 65.0,
                        ),

                        Text(
                            title,
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black,fontSize: 18.0,fontWeight: FontWeight.bold,letterSpacing: 1.5,),

                        ),


                              Icon(
                            Icons.navigate_next,
                            size: 30,
                            color: Colors.black,

                        ),

                    ],
                ),
            ),

        );
    }
}

// ClipOval(
//
//
// child: Container(
// height: 80,
// width: 300,
// color: Colors.deepPurple,
//
// child: Row(
// children:[
// Center(
// child: Text(
// "Home Card Content",
// style: TextStyle(
// color: Colors.white,
// fontSize: 20,
//
// ),
// ),
// ),
//
//
// // Add your home card content here
// SizedBox(width: 60),
// GestureDetector(
// onTap: () {
// // Add your download button onTap action here
// },
// child :IconButton(
//
// icon: Icon(Icons.language),
// iconSize: 70,
// onPressed: ()  {
// Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Resultpage()));
//
// }
//
// ),
//
// ),
// ],
// ),
// ),
// ),