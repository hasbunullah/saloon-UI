import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:plant_store_app/Screens/plants_Search.dart';
import 'package:plant_store_app/custom_Text_field/custom_field.dart';

class signUp_screen extends StatelessWidget {
  const signUp_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          SizedBox(
            height: 80.h,
          ),
          Stack(
            children: [
              Container(
                width: double.infinity,
                child: Column(
                  children: [
                    Text(
                      'Register',
                      style: TextStyle(
                          fontSize: 30.sp,
                          color: Color(0XFF1C5420),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      'Create your new ccount ',
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
                    turns: new AlwaysStoppedAnimation(-50 / 360),
                    child: new Image(
                      image: AssetImage(
                        'images/leaf.png',
                      ),
                      height: 100.h,
                      width: 100.w,
                    )),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Container(
              child: Column(
                children: [
                  custom_Text_field(icon: Icons.person, hint: 'Full Name'),
                  SizedBox(
                    height: 15.h,
                  ),
                  custom_Text_field(icon: Icons.email, hint: 'jhon@gmail.com'),
                  SizedBox(
                    height: 15.h,
                  ),
                  custom_Text_field(icon: Icons.lock, hint: 'password'),
                  SizedBox(
                    height: 15.h,
                  ),
                  custom_Text_field(icon: Icons.lock, hint: 'Confirm password'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 30.h,
                      ),
                      Text(
                        'By saying you agree to our ',
                        style: TextStyle(color: Color(0XFF1C5420)),
                      ),
                      Text(
                        'Team of use ',
                        style: TextStyle(color: Color(0XFF9E9E9E)),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'and ',
                        style: TextStyle(color: Color(0XFF1C5420)),
                      ),
                      Text(
                        'privacy notice ',
                        style: TextStyle(color: Color(0XFF9E9E9E)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 100.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(find_plants());
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
                        'Sign Up',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.sp,
                            color: Colors.white),
                      )),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
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
            ),
          )
        ],
      )),
    );
  }
}
