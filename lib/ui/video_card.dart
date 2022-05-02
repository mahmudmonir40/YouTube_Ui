

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:youtube_ui/model/video_model.dart';

Widget VideoCard(VideoModel model){
  return InkWell(
    onTap: (){},

    child: Container(
      margin: EdgeInsets.only(bottom: 26.0),

      child: Column(
        children: [
          //Let's start by the thumbnail and the duration
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 200.0,

                child: Center(child: Text('Eid Mubarak !',style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.w400),)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  image: DecorationImage(image: NetworkImage(model.thumnail!),fit: BoxFit.fill),
                  color: Colors.grey
                    
                ),
              ),

              Positioned(
                right: 30.0,
                  bottom: 20.0,

                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 2.0,horizontal: 8.0),

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      color: Colors.grey
                      // Color(0xDD000000),
                    ),

                    child: Text(model.videoDuration!,style: TextStyle(color: Colors.white),),
                  )
              )
            ],
          ),

          SizedBox(height: 12.0,),

          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Container(
                width: 54.0,
                height: 54.0,

                decoration: BoxDecoration(
                 shape: BoxShape.circle,
                  color: Colors.grey,
                  image: DecorationImage(image: NetworkImage(model.avatar!),fit: BoxFit.fill),
                ),
              ),


              SizedBox(width: 12.0,),
              Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [

                      Text(model.videoTitle!,style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w400),),
                      
                      Text("${model.channel} - ${model.views}"),
                    ],
                  )
              ),
              
              IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: Colors.black,)),
            ],
          )
        ],
      ),
    ),
  );
}