import 'package:flutter/material.dart';
import 'package:netflix_b3/utils/color_constant/color_constant.dart';
import 'package:netflix_b3/utils/database/database_Images.dart';
import 'package:netflix_b3/utils/image_constant/image_constant.dart';

import '../bottom_nav_screen/bottom_nav.dart';

class UserName extends StatelessWidget {
  const UserName({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryColor,
      appBar: AppBar(
        backgroundColor: ColorConstant.primaryColor,
        centerTitle: true,
        leading: SizedBox(),
        title: SizedBox(
            height: 37,
            width: 137,
            child: Image.asset(ImageConstant.netflixLogo)),
        actions: [
          Image.asset(ImageConstant.penIcon),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(75),
              child: GridView.builder(
                itemCount: DataBaseImage.gridImages.length + 1,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 140,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  if (index == DataBaseImage.gridImages.length) {
                    return ElevatedButton(
                      onPressed: () {},
                      child: Text("add button"),
                    );
                  } else {
                    return Column(
                      children: [
                        InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BottomNavScreen(),
                              )),
                          child: Container(
                            height: 100,
                            width: 92,
                            child: Image.asset(DataBaseImage.gridImages[index]),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          Name.name[index],
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    );
                  }
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
