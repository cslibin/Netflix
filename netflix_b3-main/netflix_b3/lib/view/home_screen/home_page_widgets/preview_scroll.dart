import 'package:flutter/material.dart';
import 'package:netflix_b3/utils/database/database_Images.dart';

import '../../../utils/color_constant/color_constant.dart';

class ScrollWidget extends StatelessWidget {
  final String title;
  const ScrollWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(title,
                  style: TextStyle(
                      fontSize: 26.74821662902832,
                      color: ColorConstant.textColor)),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 100,
            child: ListView.builder(
              itemCount: movies.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => SizedBox(
                height: 110,
                width: 110,
                child: CircleAvatar(
                  backgroundImage: AssetImage(movies[index]),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
