import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter login page',
        theme: ThemeData(
          primarySwatch: Colors.blue,

        ),
        home: MyHomePage(),
      ),
      designSize: const Size(375, 812),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "Log in",
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                color: Color(0xff090A0A),
                fontWeight: FontWeight.w500,
                fontSize: 18.sp,
              ),
            ),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
          leading: Icon(
            Icons.arrow_back_outlined,
            color: Colors.black,
            size: 24.sp,

          ),
          elevation: 0,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 16.h),
                buildTextField("Email Address"),
                SizedBox(height: 16.h),
                buildTextField("Password"),
                SizedBox(height: 16.h),
                Text(
                  " Forgot Password?",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Color(0xff6B46D2),
                      fontWeight: FontWeight.w500,
                      fontSize: 15.sp,
                    ),
                  ),
                ),
                SizedBox(
                  height: 42.h,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 56.h,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "LOG IN",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xff6B46D2)),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.r),
                        ))
                        //padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 20.h))
                        ),
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                RichText(
                  text: TextSpan(
                      text: "Don't have an account? ",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 15.sp,
                            color: Color(0xff4C5673)),
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' Sign up',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15.sp,
                              color: Color(0xff6B46D2)),
                        ),
                      ]),
                ),
                SizedBox(height: 34.h),
                Row(
                  children: [
                    Expanded(
                        child: Divider(
                      thickness: 1,
                      color: Color(0xffDEDEDE),
                    )),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 13.w),
                      child: Text(
                        "OR",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18.sp,
                            color: Color(0xff090A0A)),
                      ),
                    ),
                    Expanded(
                        child: Divider(thickness: 1, color: Color(0xffDEDEDE))),
                  ],
                ),
                SizedBox(height: 38.h),
                buildTextButton("Sign in with Google", "Google.png"),
                SizedBox(height: 16.h),
                buildTextButton("Sign in with Apple", "Apple.png"),
                SizedBox(height: 16.h),
                buildTextButton("Sign in with Facebook", "Facebook.png"),
              ],
            ),
          ),
        ));
  }

  TextButton buildTextButton(String text,String logo) {
    return TextButton(
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 18.w,
          ),
          Image.asset(
            "assets/$logo",
            height: 20.h,
            width: 19.58.w,
          ),
          SizedBox(
            width: 45.42.w,
          ),
          Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16.sp,
              color: Color(0xff090A0A),
            ),
          ),
        ],
      ),
      style: ButtonStyle(
        side: MaterialStateProperty.all(
          BorderSide(
            color: Color(0xff999999),
          ),
        ),
        padding:
            MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 20.h)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
      ),
    );
  }

  TextField buildTextField(String hint) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(
              color: Colors.transparent,
            )),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(
              color: Colors.transparent,
            )),
        filled: true,
        fillColor: Color(0xffF1F4FA),
        hintText: hint,
        hintStyle: GoogleFonts.poppins(
          textStyle: TextStyle(
            color: Color(0xff090A0A),
            fontWeight: FontWeight.w400,
            fontSize: 15.sp,
          ),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 21.w),
      ),
    );
  }
}
