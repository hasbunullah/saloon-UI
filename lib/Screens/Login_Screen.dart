import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:plant_store_app/Screens/signUp_screen.dart';
import 'package:plant_store_app/custom_Text_field/custom_field.dart';

class login_screen extends StatefulWidget {
  login_screen({Key? key}) : super(key: key);

  @override
  State<login_screen> createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {
  bool? checkedValue1 = true;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        builder: (context, child) {
          return SafeArea(
            child: Scaffold(
              body: Column(
                children: [
                  ClipPath(
                    child: Container(
                      width: MediaQuery.of(context).size.width.w,
                      height: 230.h,
                      decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        image: DecorationImage(
                            image: AssetImage('images/plant2.jpg'),
                            fit: BoxFit.fill),
                      ),
                    ),
                    clipper: CustomClipPath(),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        child: Column(
                          children: [
                            Text(
                              'Welcome back',
                              style: TextStyle(
                                  fontSize: 30.sp,
                                  color: Color(0XFF1C5420),
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              'Login to your account ',
                              style: TextStyle(
                                fontSize: 15.sp,
                                color: Color(0XFF9E9E9E),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 270,
                        child: RotationTransition(
                            turns: new AlwaysStoppedAnimation( -50/ 360),
                            child: new Image(
                              image: AssetImage(
                                'images/leaf.png',
                              ),
                              height: 80.h,
                              width: 80.w,
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Column(
                      children: [
                        custom_Text_field(icon: Icons.person, hint: 'Full Name'),
                        SizedBox(
                          height: 10.h,
                        ),
                        custom_Text_field(icon: Icons.lock, hint: '*****'),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Checkbox(
                                value: checkedValue1,
                                activeColor: Colors.green,
                                onChanged: (newValue) {
                                  setState(() {
                                    checkedValue1 = newValue;
                                  });
                                },
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.r))),
                            Text(
                              'Remember Me',
                              style: TextStyle(
                                fontSize: 15.sp,
                                color: Color(0XFF9E9E9E),
                              ),
                            ),
                            Spacer(),
                            Text(
                              'Forget Password ?',
                              textAlign: TextAlign.end,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        GestureDetector(
                          onTap: (){
                            Get.to(signUp_screen());
                          },
                          child: Container(
                            width: double.infinity,
                            height: 50.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.r),
                              color: Color(0XFF08401a),
                            ),
                            child: Center(
                                child: Text(
                              'Login',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.sp,
                                  color: Colors.white),
                            )),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't have an account?",
                              style: TextStyle(
                                fontSize: 15.sp,
                                color: Color(0XFF9E9E9E),
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              "Sign Up",
                              style: TextStyle(
                                fontSize: 15.sp,
                                color: Color(0XFF1C5420),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}

class CustomClipPath extends CustomClipper<Path> {
  var radius = 15.0.r;

  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height.h);
    path.quadraticBezierTo(size.width.w / 4, size.height.h - 40,
        size.width.w / 2, size.height.h - 20);
    path.quadraticBezierTo(
        3 / 4 * size.width.w, size.height.h, size.width.w, size.height.h - 30);
    path.lineTo(size.width.w, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
