import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      
      body: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(
              child: TextField(decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Search for a show, movie, genre, e.t.c.",hintStyle: TextStyle(color: Colors.white),fillColor: Colors.white,
                prefixIcon: Icon(Icons.search,color: Colors.white,),
                suffixIcon: Icon(Icons.mic,color: Colors.white,),
               )),
              ),
              Padding(
                padding: const EdgeInsets.only(right:250 ),
                child: Text("Top Searches",style: TextStyle(color: Colors.white,fontSize: 20, ),),
              ),
              SizedBox(height: 20,),
              Container(
                height: 80,
                width: double.infinity,
                color: Color.fromARGB(255, 42, 41, 41),
                child: Row(
                  children: [
                    Container(width: 146,
                    height: 80,
                    child: Image.asset("assets/images/search/Rectangle 21.png"),
                    ),SizedBox(width: 20,),
                    Text("Citation",style: TextStyle(color: Colors.white,fontSize: 20),),
                    Padding(
                      padding: const EdgeInsets.only(left: 100),),
                    Icon(Icons.play_circle_outline,color: Colors.white,size: 40,)
                  ],
                ),
              ),
      
      
            
              SizedBox(height: 20,),
              Container(
                height: 80,
                width: double.infinity,
                color: Color.fromARGB(255, 42, 41, 41),
                child: Row(
                  children: [
                    Container(width: 146,
                    height: 80,
                    child: Image.asset("assets/images/search/Rectangle 23.png"),
                    ),SizedBox(width: 20,),
                    Text("Breaking Bad",style: TextStyle(color: Colors.white,fontSize: 20),),
                   
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Icon(Icons.play_circle_outline,color: Colors.white,size: 40,),
                    )
                  ],
                ),
              ),
      
               SizedBox(height: 20,),
              Container(
                height: 80,
                width: double.infinity,
                color: Color.fromARGB(255, 42, 41, 41),
                child: Row(
                  children: [
                    Container(width: 146,
                    height: 80,
                    child: Image.asset("assets/images/search/Rectangle 22.png"),
                    ),SizedBox(width: 20,),
                    Text("Oloture",style: TextStyle(color: Colors.white,fontSize: 20),),
                   
                    Padding(
                      padding: const EdgeInsets.only(left: 105),
                      child: Icon(Icons.play_circle_outline,color: Colors.white,size: 40,),
                    )
                  ],
                ),
              ),
      
               SizedBox(height: 20,),
              Container(
                height: 80,
                width: double.infinity,
                color: Color.fromARGB(255, 42, 41, 41),
                child: Row(
                  children: [
                    Container(width: 146,
                    height: 80,
                    child: Image.asset("assets/images/search/Rectangle 24.png"),
                    ),SizedBox(width: 20,),
                    Text("The Governor",style: TextStyle(color: Colors.white,fontSize: 20),),
                   
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Icon(Icons.play_circle_outline,color: Colors.white,size: 40,),
                    )
                  ],
                ),
              ),

              SizedBox(height: 20,),
              Container(
                height: 80,
                width: double.infinity,
                color: Color.fromARGB(255, 42, 41, 41),
                child: Row(
                  children: [
                    Container(width: 146,
                    height: 80,
                    child: Image.asset("assets/images/search/Rectangle 26.png"),
                    ),SizedBox(width: 20,),
                    Text("The Setup",style: TextStyle(color: Colors.white,fontSize: 20),),
                   
                    Padding(
                      padding: const EdgeInsets.only(left: 80),
                      child: Icon(Icons.play_circle_outline,color: Colors.white,size: 40,),
                    )
                  ],
                ),
              ),

              SizedBox(height: 20,),
              Container(
                height: 80,
                width: double.infinity,
                color: Color.fromARGB(255, 42, 41, 41),
                child: Row(
                  children: [
                    Container(width: 146,
                    height: 80,
                    child: Image.asset("assets/images/search/Rectangle 25.png"),
                    ),SizedBox(width: 20,),
                    Text("Ozark",style: TextStyle(color: Colors.white,fontSize: 20),),
                   
                    Padding(
                      padding: const EdgeInsets.only(left: 115),
                      child: Icon(Icons.play_circle_outline,color: Colors.white,size: 40,),
                    ),
                    
                  ],
                ),
                
              ),
              
              
      
          ],
        ),
      ),
      
      
    );
  }
}