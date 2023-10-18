import 'package:flutter/material.dart';

import '../../utils/color_constant/color_constant.dart';
import '../../utils/image_constant/image_constant.dart';
import '../username/user_name.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 4))
        .then((value) => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => UserName(),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 56,
              width: 270,
              child: Image.asset(ImageConstant.netflixLogo),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          CircularProgressIndicator(
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
