import 'package:flutter/material.dart';
import 'package:netflix_b3/utils/database/database_Images.dart';

import '../../../utils/color_constant/color_constant.dart';

class ContainerScroll extends StatelessWidget {
  const ContainerScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              Text("Continue Watching for Emenalo",
                  style: TextStyle(
                    fontSize: 20.92117691040039,
                    color: ColorConstant.textColor,
                  )),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 160,
            child: ListView.builder(
              itemCount: movies.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Container(
                  height: 161,
                  width: 113,
                  child: Image.asset(movies[index]),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
