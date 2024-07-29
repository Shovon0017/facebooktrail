

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("facebook",style: TextStyle(color: Colors.blue,fontWeight:FontWeight.bold,fontSize: 30),),
        actions: const [
          Icon(Icons.add_circle,size:35,),
          SizedBox(width: 20,),
          Icon(Icons.search_outlined,size:35),
          SizedBox(width: 20,),
          Padding(
            padding: EdgeInsets.only(right:15.0),
            child: Icon(Icons.message,size:35),
          )
        ],
      ),
      body: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 18),
                child: Icon(Icons.home,size:35),
              ),Icon(Icons.video_collection_outlined,size:35),
              Icon(Icons.people_outline,size:35),
              Icon(Icons.home_repair_service_rounded,size:35),Icon(Icons.notifications_none_outlined,size:35),
              Padding(
                padding: EdgeInsets.only(right:18),
                child: Icon(Icons.menu,size:35),
              )
            ],
          ),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(width: 8,),
               CircleAvatar(radius: 25,
                 child: Image.asset("images/shovon.jpg",fit: BoxFit.cover,),
              ),
              Container(
                height: 40,
                width: 280,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(40)),
                  border: Border.all(color: Colors.black87),
                ),
                child: const Center(
                  child: Text("What's on your mind"),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right:20.0),
                child: Icon(Icons.photo_library_outlined,color: Colors.green,),
              ),
            ],
          ),
          Expanded(
            flex: 3,
            child: ListView.builder(
                itemCount: 50,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.only(top: 8,bottom: 8,left: 5),
                    child: Container(
                      height: 100,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset("images/shovon01.jpg",fit: BoxFit.cover,),
                    ),
                  );
                }),
          ),
          Expanded(
            flex: 6,
            child: ListView.builder(
                itemCount: 50,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.only(top: 8,bottom: 8,left: 5),
                    child: Container(
                        height: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey
                        ),
                        child: Image.asset("images/Screenshot (73).png",fit: BoxFit.fill,)
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
