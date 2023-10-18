import 'package:flutter/material.dart';
import 'package:netflix_b3/utils/database/database_Images.dart';


class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: DataBaseImage.gridImages.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(9.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: 55,
                                  height: 55,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image: AssetImage(DataB
                                              .userimg[index]["image"]),
                                          fit: BoxFit.fill)),
                                ),
                                Text(
                                  DataB.userimg[index]["name"],style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          );
                        }),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.edit,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Manage Profiles",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.all(10),
                width: double.infinity,
                height: 250,
                color: Color.fromARGB(255, 52, 51, 51),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.message),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Tell friends about Netflix.",
                          style: TextStyle(
                              fontSize: 19,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamusbibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa,",
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Terms & Conditions",
                      style: TextStyle(
                        // color: Colors.white.withOpacity(.9),
                        color: Colors.white,
                        fontSize: 10,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 11, right: 10),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 37,
                            width: 247,
                            child: TextField(
                              decoration: InputDecoration(
                                  fillColor: Color.fromARGB(255, 0, 0, 0),
                                  filled: true,
                                  border: InputBorder.none),
                                  cursorColor: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Container(
                            width: 96,
                            height: 37,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                            ),
                            child: Center(
                                child: Text(
                              "Copy Link",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            )),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 15,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      ),
                    ),
                    Row(
                      children: [SizedBox(width: 30,),
                        Image.asset("assets/menu/Group 93.png",),
                        SizedBox(width: 50,),
                        VerticalDivider(color: Colors.white,thickness: 9,),
                        Image.asset("assets/menu/Group 92.png"),
                        SizedBox(width: 50,),
                        Image.asset("assets/menu/Gmail-logo 1.png"),
                        SizedBox(width: 50,),
                        Column(
                          children: [
                            Icon(Icons.more_horiz,color: Colors.white,),
                            Text("More",style: TextStyle(color: Colors.white),)
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 5,),
              Row(
                children: [
                  Icon(Icons.check_sharp,color: Colors.white,),
                  Text("My List",style: TextStyle(color: Colors.white),)
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 5),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 10),
                child: Divider(
                  color: Colors.white,
                  thickness: .9,
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 10),
                    child: Column(
                      children: [
                        Text(
                          "App Settings ",
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                        SizedBox(height: 8,),
                        Text(
                          "Account ",
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                         SizedBox(height: 8,),
                        Text(
                          "Help ",
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                         SizedBox(height: 8,),
                        Text(
                          "Sign Out ",
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                      ],
                    ),
                    
                  ),Text("")
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}