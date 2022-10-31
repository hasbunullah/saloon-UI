import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plant_store_app/custom_Text_field/custom_field.dart';

import '../custom_Container/custom_Container.dart';

class find_plants extends StatelessWidget {
  const find_plants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: CircleAvatar(
                    child: Image(
                      image: AssetImage('images/plant.jpeg'),
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Color(0XFF1C5420),
                  child: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.sp,
            ),
            Text(
              "Let's find your \nplants!",
              style: TextStyle(
                  fontSize: 30.sp,
                  color: Color(0XFF1C5420),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.sp,
            ),
            custom_Text_field(
              icon: Icons.search,
              hint: 'Search Plant',
              icon2: Icons.mic,
            ),
            DefaultTabController(
              length: 3,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 20,
                    child: TabBar(
                      unselectedLabelColor: Colors.black,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xffc1dfcb)),
                      labelColor: Colors.black,
                      tabs: [
                        Tab(
                          child: Text(
                            'All',
                          ),
                        ),
                        Tab(
                          text: "Hair Cut",
                        ),
                        Tab(
                          text: "Beard",
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 300,
                    width: double.infinity,
                    child: TabBarView(
                      children: <Widget>[
                        Stack(
                          children: [
                            Container(
                              child: Center(
                                child: Padding(
                                  padding: EdgeInsets.all(20),
                                  child: GridView.count(
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 10,
                                    mainAxisSpacing: 10,
                                    childAspectRatio: 1 / 1.1,
                                    shrinkWrap: true,
                                    children: List.generate(
                                      2,
                                      (index) {
                                        return Stack(children: [
                                          Container(
                                            color: Color(0xffe5f0eb),
                                            child: ClipPath(
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width
                                                    .w,
                                                height: 230.h,
                                                decoration: BoxDecoration(
                                                  color: Color(0xffc1dfcb),
                                                ),
                                              ),
                                              clipper: CustomClipPath(),
                                            ),
                                          ),
                                        ]);
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            Positioned(
                              child: Image(
                                image: AssetImage(
                                  'images/bigPlant.png',
                                ),
                                height: 230,
                                width: 230,
                              ),
                              left: -30,
                            ),
                            Positioned(
                              child: Image(
                                image: AssetImage(
                                  'images/smallPlant.png',
                                ),
                                height: 300,
                                width: 300,
                              ),
                              left: 150,
                              bottom: 60,
                            ),
                          ],
                        ),
                        Container(
                          color: Colors.deepOrange,
                          child: Center(
                            child: Text("Hair Cut"),
                          ),
                        ),
                        Container(
                          child: Center(
                            child: Text("Beard"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Text(
              'Recent Viwed',
              style: TextStyle(
                  color: Color(
                    0XFF1C5420,
                  ),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5,),
            Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  child: Image(
                    image: AssetImage('images/pexels2.jpg'),fit: BoxFit.cover,
                    height: 70,
                    width: 70,
                  ),
                ),
                SizedBox(width: 10,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Calathea',
                      style: TextStyle(
                          color: Color(
                            0XFF1C5420,
                          ),
                          fontWeight: FontWeight.bold),
                    ),

                    Text(
                      "Its Spines don't grow",
                      style: TextStyle(
                          color: Color(
                            0XFF1C5420,
                          ),
                          ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}

class CustomClipPath extends CustomClipper<Path> {
  var radius = 15.0.r;

  @override
  Path getClip(Size size) {
    Path path = Path();
    //path.lineTo(0, size.height.h);
    path.quadraticBezierTo(size.width.w / 4, size.height.h - 40,
        size.width.w / 2, size.height.h - 40);
    path.quadraticBezierTo(3 / 4 * size.width.w, size.height.h - 40,
        size.width.w, size.height.h - 40);
    path.lineTo(size.width.w, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
