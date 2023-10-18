import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class coming_soon extends StatelessWidget {
  const coming_soon({super.key});

  @override
  Widget build(BuildContext context)
   {YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'iLnmTe5Q2Qw',
    flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: true,
    ),
);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.black,
        leading: Icon(Icons.notifications),
        title: Text("Notifications",style: TextStyle(color: Colors.white),),
      ),
      body: 
      SingleChildScrollView(
        child: Column(
         children: [
          Container(
            width: double.infinity,
            height: 220,
            color: Colors.grey[700],
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset("assets/images/comingsoon/Rectangle 30.png",width: 150,height: 110,),
                    Column(
                      children: [
                        Text("New Arrival",style: TextStyle(color: Colors.white,fontSize: 20),),
                        Text("El Chapo",style: TextStyle(color: Colors.white),)
                      ],
                    )
                  ],
                ),
                 Row(
                  children: [
                    Image.asset("assets/images/comingsoon/Rectangle 31.png",width: 150,height: 110,),
                    Column(
                      children: [
                        Text("New Arrival",style: TextStyle(color: Colors.white,fontSize: 20),),
                        Text("Peaky Blinders",style: TextStyle(color: Colors.white),)
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 20,),
          YoutubePlayer(
    controller: _controller,
    showVideoProgressIndicator: true,
    
),
          // Container(
          //   height: 210,
          //   width: double.infinity,
          //   child: Image.asset("assets/images/comingsoon/Rectangle 32.png"),
          // ),
           SizedBox(height: 20,),
           Padding(
             padding: const EdgeInsets.only(left: 280),
             child: Row(children: [
             Icon(Icons.notifications,color: Colors.white,),
             SizedBox(width: 40,),
              Icon(Icons.share,color: Colors.white,),
              ],),
           ),
           Padding(
             padding: const EdgeInsets.only(left: 250),
             child: Row(children: [
             Text("Remind Me",style: TextStyle(color: Colors.white),),
             SizedBox(width: 20,),
              Text("Share",style: TextStyle(color: Colors.white),),
              ],),
           ),
           Padding(
             padding: const EdgeInsets.only(right: 180),
             child: Text("Season 1 Coming December 14",style: TextStyle(color: Colors.white),),
           ),
           Padding(
             padding: const EdgeInsets.only(right: 220),
             child: Text("Castle & Castle",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w700),),
           ),
           Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa  id ut ipsum aliquam  enim non posuere pulvinar diam."

          ,style: TextStyle(color: Colors.white),),
          
          SizedBox(height: 20,),
          Container(
            height: 210,
            width: double.infinity,
            child: Image.asset("assets/images/comingsoon/Rectangle 32.png"),
          ),
           SizedBox(height: 20,),
           Padding(
             padding: const EdgeInsets.only(left: 280),
             child: Row(children: [
             Icon(Icons.notifications,color: Colors.white,),
             SizedBox(width: 40,),
              Icon(Icons.share,color: Colors.white,),
              
              ],),
           ),
           Padding(
             padding: const EdgeInsets.only(left: 250),
             child: Row(children: [
             Text("Remind Me",style: TextStyle(color: Colors.white),),
             SizedBox(width: 20,),
              Text("Share",style: TextStyle(color: Colors.white),),
              ],),
           ),
           Padding(
             padding: const EdgeInsets.only(right: 180),
             child: Text("Season 1 Coming December 14",style: TextStyle(color: Colors.white),),
           ),
           Padding(
             padding: const EdgeInsets.only(right: 220),
             child: Text("Castle & Castle",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w700),),
           ),
           Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa  id ut ipsum aliquam  enim non posuere pulvinar diam."

          ,style: TextStyle(color: Colors.white),),
      
         ],
        ),
      ),
    );
  }
}