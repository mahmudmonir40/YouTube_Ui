
import 'package:flutter/material.dart';
import 'package:youtube_ui/model/video_model.dart';
import 'package:youtube_ui/ui/video_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'YouTube Ui',
      theme: ThemeData(

        primarySwatch: Colors.teal,
      ),
      home: HomePage(),
    );
  }
}




class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  //I'm going to paste a list of data
  List <VideoModel> items = [

    VideoModel(

        "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg",
        "YouTube Ui Clone With Flutter",
        "19:58",
        "https://love-shayari.co/wp-content/uploads/2021/10/sun-rise.jpg",
        "Mahmud Code",
        "1398 views",
        "3 months ago"),

    VideoModel(

        "https://cdn.wallpapersafari.com/51/3/mRfDj1.jpg",
        "WhatsApp Ui Clone With Flutter",
        "10:58",
        "https://cdn.wallpapersafari.com/33/16/Bru8pV.jpg",
        "Mostafa Code",
        "1898 views",
        "6 months ago"),

    VideoModel(

        "https://cdn.wallpapersafari.com/98/73/weFSot.jpg",
        "Instagram Ui Clone With Flutter",
        "9:58",
        "https://wallpaperaccess.com/full/1131198.jpg",
        "Torab Code",
        "2998 views",
        "9 months ago"),

  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      //Let's start by setting the background of the app
      backgroundColor: Color(0xFFFAFAFA),

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,

        // leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu,color: Colors.black,)),

        title: Image.asset('assets/k1.jpg',fit: BoxFit.fill,width: 100,),

        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.cast,color: Colors.black,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications,color: Colors.black,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.black,)),

        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(17),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Text('Explore',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.black),),


              Container(
                margin: EdgeInsets.symmetric(vertical: 12),
                width: double.infinity,
                height: 40,

                child: ListView(
                  scrollDirection: Axis.horizontal,

                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 8.0),

                      child: FilterChip(
                          label: Text('Gaming',style: TextStyle(color: Colors.black),),

                          elevation: 0,
                          onSelected: (value){}
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(right: 8.0),

                      child: FilterChip(
                          label: Text('Islamic Music',style: TextStyle(color: Colors.black),),

                          elevation: 0,
                          onSelected: (value){}
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(right: 8.0),

                      child: FilterChip(
                          label: Text('Programming',style: TextStyle(color: Colors.black),),

                          elevation: 0,
                          onSelected: (value){}
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(right: 8.0),

                      child: FilterChip(
                          label: Text('Mobile Development',style: TextStyle(color: Colors.black),),

                          elevation: 0,
                          onSelected: (value){}
                      ),
                    ),
                  ],
                ),
              ),


              Text('Recommended',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.black),),


              SizedBox(height: 16.0,),

              //Now let's create the video car element
              //we will need a model to store all the data
              //and create a dummy data to simulate a network data

              VideoCard(items[0]),

              VideoCard(items[1]),

              VideoCard(items[2]),


            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
          selectedItemColor: Colors.red,

          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),

            BottomNavigationBarItem(icon: Icon(Icons.video_collection),label: 'Shorts'),

            BottomNavigationBarItem(icon: Icon(Icons.add),label: 'New Video'),

            BottomNavigationBarItem(icon: Icon(Icons.playlist_play),label: 'Playlist'),

            BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Settings'),

          ]
      ),
    );
  }
}


