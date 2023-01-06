import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:videoplayer/screens/list.dart';
import 'package:videoplayer/screens/videopage.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}
class Controllers {
  late VideoPlayerController videoController;

  Controllers({required this.videoController});
}

class _HomepageState extends State<Homepage> {
  List<Controllers> controllerList = [];

  void allVideo() async {
    controllerList = [
      Controllers(
        videoController:
        VideoPlayerController.asset("${list[0]["video"]}")
          ..initialize().then((value) => setState(() {})),
      ),
      Controllers(
        videoController:
        VideoPlayerController.asset("${list[1]["video"]}")
          ..initialize().then((value) => setState(() {})),
      ),
      Controllers(
        videoController:
        VideoPlayerController.asset("${list[2]["video"]}")
          ..initialize().then((value) => setState(() {})),
      ),
      Controllers(
        videoController:
        VideoPlayerController.asset("${list[3]["video"]}")
          ..initialize().then((value) => setState(() {})),
      ),
      Controllers(
        videoController:
        VideoPlayerController.asset("${list[4]["video"]}")
          ..initialize().then((value) => setState(() {})),
      ),
      Controllers(
        videoController:
        VideoPlayerController.asset("${list[5]["video"]}")
          ..initialize().then((value) => setState(() {})),
      ),
      Controllers(
        videoController:
        VideoPlayerController.asset("${list[6]["video"]}")
          ..initialize().then((value) => setState(() {})),
      ),
      Controllers(
        videoController:
        VideoPlayerController.asset("${list[7]["video"]}")
          ..initialize().then((value) => setState(() {})),
      ),
      Controllers(
        videoController:
        VideoPlayerController.asset("${list[8]["video"]}")
          ..initialize().then((value) => setState(() {})),
      ),
      Controllers(
        videoController:
        VideoPlayerController.asset("${list[9]["video"]}")
          ..initialize().then((value) => setState(() {})),
      ),
    ];
  }


  @override
  void initState() {
    super.initState();
    allVideo();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("YouTube",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w500),),
        backgroundColor: Colors.black,
        leading: Image.asset("assets/images/youtube-removebg-preview.png",),
        actions: [
          Icon(Icons.notifications_none,color: Color(0xffebebeb),size: 25,),
          SizedBox(width: 12,),
          Icon(Icons.cast,color: Color(0xffebebeb),size: 25,),
          SizedBox(width: 12,),
          Icon(Icons.search_outlined,color: Color(0xffebebeb),size: 25,),
          SizedBox(width: 12,),
          CircleAvatar(
              radius: 16,
              backgroundImage: AssetImage("assets/images/kesha.jpg")
          ),
          SizedBox(width: 10,),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: SingleChildScrollView(
                 scrollDirection: Axis.horizontal,
                 child: Row(
                   children: [
                     SizedBox(width: 15,),
                     Container(
                       alignment: Alignment.center,
                       height: 30,
                       width:45,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(40),
                         color: Colors.white
                       ),
                       child: Text("All",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                     ),
                     SizedBox(width: 15,),
                     Container(
                       alignment: Alignment.center,
                       height: 30,
                       width: 120,
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(40),
                           color: Colors.grey.shade800
                       ),
                       child: Text("New to you",style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w600,fontSize: 16),),
                     ),
                     SizedBox(width: 15,),
                     Container(
                       alignment: Alignment.center,
                       height: 30,
                       width: 80,
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(40),
                           color: Colors.grey.shade800
                       ),
                       child: Text("Music",style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w600,fontSize: 16),),
                     ),
                     SizedBox(width: 15,),
                     Container(
                   alignment: Alignment.center,
                       height: 30,
                       width: 170,
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(40),
                           color: Colors.grey.shade800
                       ),
                       child: Text("Bollywood Music",style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w600,fontSize: 16),),
                     ),
                     SizedBox(width: 15,),
                     Container(
                       alignment: Alignment.center,
                       height: 30,
                       width: 60,
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(40),
                           color: Colors.grey.shade800
                       ),
                       child: Text("Live",style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w600,fontSize: 16),),
                     ),
                     SizedBox(width: 15,),
                     Container(
                       alignment: Alignment.center,
                       height: 30,
                       width: 120,
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(40),
                           color: Colors.grey.shade800
                       ),
                       child: Text("Hingu Music",style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w600,fontSize: 16),),
                     ),
                     SizedBox(width: 15,),
                     Container(
                       alignment: Alignment.center,
                       height: 30,
                       width: 100,
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(40),
                           color: Colors.grey.shade800
                       ),
                       child: Text("Watched",style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w600,fontSize: 16),),
                     ),
                   ],
                 ),
               ),
             ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 740,
                width: double.infinity,
                child: ListView(
                  children: [
                    Column(
                      children: controllerList
                          .map(
                            (controller) => Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => videopage(
                                      controllerList.indexOf(controller)),
                                ),
                              );
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 200,
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Chewie(
                                    controller: ChewieController(
                                      aspectRatio: 16 / 9,
                                      videoPlayerController:
                                      controller.videoController,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "${list[controllerList.indexOf(controller)]["name"]}",
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "${list[controllerList.indexOf(controller)]["detail"]}",
                                  style: const TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(height: 15,),
                                Divider(height: 1,color: Colors.white70,),
                              ],
                            ),
                          ),
                        ),
                      )
                          .toList(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    setState(() {
      mounted == false;
    });
  }

}
