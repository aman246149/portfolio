import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyHomePage extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    double defaultScreenWidth = 1900.0;
    double defaultScreenHeight = 1080.0;
    ScreenUtil.instance = ScreenUtil(
      width: defaultScreenWidth,
      height: defaultScreenHeight,
      allowFontScaling: true,
    )..init(context);



    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width ,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/background.jpg",
              ),
              fit: BoxFit.cover,
            ),

          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 30.0,right: 30.0,top: 50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Aman's portfolio",
                      style: GoogleFonts.poppins(fontWeight: FontWeight.bold,
                          fontSize: ScreenUtil.instance.setSp(66.0)
                          ,color: Colors.white),
                    ),
                    Icon(Icons.calendar_view_day,color: Colors.white,size: 56,),
                  ],
                ),
              ),

              SizedBox(
                height: 150.0,
              ),


              Row(

                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Hello,I'm Aman Singh !",style: GoogleFonts.poppins( fontSize: ScreenUtil.instance.setSp(56.0),fontWeight: FontWeight.w700,color: Colors.white),),
                ],
              ),
              Text("I am a student ",style: GoogleFonts.lato(fontWeight: FontWeight.w700,fontSize: ScreenUtil.instance.setSp(56.0),color: Colors.black),),

              SizedBox(
                height: 100.0,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  Text("Currently working on \n 1. Flutter development \n 2. web development",
                    style:  GoogleFonts.poppins( fontSize: ScreenUtil.instance.setSp(56.0),fontWeight: FontWeight.w700,color: Colors.black),),


                ],
              ),


            ],
          ),

        ),

      ),
    );
  }
}