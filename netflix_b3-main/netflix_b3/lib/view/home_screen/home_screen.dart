import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:netflix_b3/utils/color_constant/color_constant.dart';
import 'package:netflix_b3/utils/database/database_Images.dart';

import 'home_page_widgets/container_scroll.dart';
import 'home_page_widgets/preview_scroll.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  CarouselSlider(items:List.generate(Database1.userimg1.length, (index) =>Container(height: 415,width: 424,
                  child: Image.network(Database1.userimg1[index] as String),)),
              
                   options: CarouselOptions(
                    scrollDirection: Axis.horizontal,
                    autoPlay: true,
                    autoPlayAnimationDuration: Duration(seconds: 2),
                    autoPlayCurve:Curves.bounceIn, 
                  )),
             
             
                 Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset("assets/images/logos_netflix-icon.png"),
                        Text(
                          "TV Shows",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        Text(
                          "Movies",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        Text(
                          "My List",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        SizedBox()
                      ],
                    ),
                    SizedBox(height: 180,),
                    
                    Text(
                      "#2 Nigiria today",
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    )
                  ],
                ),
                ]
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 35,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "My List",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        )
                      ],
                    ),
                    Container(
                      height: 46,
                      width: 111,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffC4C4C4),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.play_arrow,
                            size: 28,
                          ),
                          Text(
                            "play",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.info,
                          color: Colors.white,
                          size: 35,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "info",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ScrollWidget(title: "Previews"),
              SizedBox(
                height: 15,
              ),
              ListView.builder(
                itemCount: 10,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => ContainerScroll(),
              ),
          
            ],
          ),
        ),
      ),
    );
  }
}
