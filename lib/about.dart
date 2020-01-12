import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
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
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top:20.0),
                      child: Text("ABOUT ME",style: GoogleFonts.laBelleAurore(fontWeight: FontWeight.w700,color: Colors.white,fontSize: ScreenUtil.instance.setSp(86.0)),),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text("I am a IT Student who plays game \n"
                            "like pubg ,I m lazy so i learn flutter\n"
                            "also i want to learn more about\n"
                            "web development and \n machine learning",style: GoogleFonts.lato(fontWeight: FontWeight.w700,color: Colors.white,fontSize: ScreenUtil.instance.setSp(56.0)),),

                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            ClipOval(
                              child: Image.asset("assets/a.jpg",
                                height: ScreenUtil.instance.setHeight(310.0),
                                width: ScreenUtil.instance.setHeight(310.0),
                                fit: BoxFit.cover,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),


                  ],
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
