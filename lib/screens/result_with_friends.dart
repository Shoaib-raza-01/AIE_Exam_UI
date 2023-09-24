import 'dart:async';

import 'package:flutter/material.dart';

class ResultsWithFriends extends StatefulWidget {
  const ResultsWithFriends({super.key});

  @override
  State<ResultsWithFriends> createState() => _ResultsWithFriendsState();
}

class _ResultsWithFriendsState extends State<ResultsWithFriends> {
  final StreamController<List> _listStreamController =
      StreamController<List>();
  var users = [
    {
      "name": "You",
      "image": "assets/images/profile_pic.png",
      "rank": "8th",
      "points": "4 pt",
      "acrcy" : "80 %",
      "timeE" : "80 %"
    },
    {
      "name": "name",
      "image": 'assets/images/f1.png',
      "rank": "1st",
      "points": "12 pt",
      "acrcy" : "80%",
      "timeE" : "80%"
    },
    {
      "name": "name",
      "image": 'assets/images/f1.png',
      "rank": "2nd",
      "points": "12 pt",
      "acrcy" : "80%",
      "timeE" : "80%"
    },
    {
      "name": "name",
      "image": "assets/images/f1.png",
      "rank": "3rd",
      "points": "10 pt",
      "acrcy" : "80%",
      "timeE" : "80%"
    },
    {
      "name": "name",
      "image": "assets/images/f1.png",
      "rank": "4th",
      "points": "9 pt",
      "acrcy" : "80%",
      "timeE" : "80%"
    },
    {
      "name": "name",
      "image": "assets/images/f1.png",
      "rank": "5th",
      "points": "9 pt",
      "acrcy" : "80%",
      "timeE" : "80%"
    },
    {
      "name": "name",
      "image": "assets/images/f1.png",
      "rank": "6th",
      "acrcy" : "80%",
      "points": "7 pt",
      "timeE" : "80%"
    },
    {
      "name": "name",
      "image": "assets/images/f1.png",
      "rank": "7th",
      "points": "6 pt",
      "acrcy" : "80%",
      "timeE" : "80%"
    },
    {
      "name": "name",
      "image": "assets/images/f1.png",
      "rank": "9th",
      "points": "2 pt",
      "acrcy" : "80%",
      "timeE" : "80%"
    }
  ];

  @override
  void initState() {
    super.initState();
    _listStreamController.add(users);
  }

  @override
  void dispose() {
    _listStreamController.close();
    super.dispose();
  }

  // void onTap(item) {
  //   print(item);

  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
          appBar: AppBar(
            title: const Center(
                child: Text(
              "Result",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Loto'),
            )),
            leading: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Color.fromRGBO(253, 138, 0, 1),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: const Image(
                      image: AssetImage('assets/images/profile_pic.png')),
                ),
              )
            ],
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 20),
                        width: MediaQuery.of(context).size.width/2,
                        child: const Text('Rank'),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width/2,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        // width: MediaQuery.of(context).size.width/2,
                        child: Text("Accuracy"),
                      ),
                      SizedBox(
                        // width: MediaQuery.of(context).size.width/2,
                        child: Text("Time Efficiency"),
                      )
                    ],
                  ),
                      )
                    ],
                  ),
                  StreamBuilder<List>(
                    stream: _listStreamController.stream,
                    initialData: const [],
                    builder: (c, snapshot) => Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: snapshot.data!
                          .map((d) => ListTile(
                                selectedColor: Colors.black26,
                                tileColor: const Color.fromARGB(255, 255, 255, 255),
                                title: Column(
                                  children: [
                                    Row(
                            children: [
                              Padding(
                                    padding: const EdgeInsets.only(left: 5, right: 20),
                                    child: Text(d["rank"]!),
                              ),
                              Image(
                                      height: 46,
                                      width: 46,
                                      fit: BoxFit.cover,
                                      image: AssetImage(d["image"]!)),
                              const SizedBox(
                                    width: 20,
                              ),
                              Padding(
                                    padding: const EdgeInsets.only(left: 15, right:50),
                                    child: Text(d["name"]!),
                              ),
                              const Padding(
                                    padding: EdgeInsets.only( right:50),
                                    child: Text("80%",style: TextStyle(
                                        fontSize: 16,
                                        color: Color.fromRGBO(255, 140, 0, 1)),
                                    )),
                              const Text(
                                    "80%",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Color.fromRGBO(255, 140, 0, 1)),
                              ),
                            ],
                          ),
                          const Divider()
                                  ],
                                ),
                                // subtitle: Text(d['rank']),
                                // trailing: Text(
                                //    d['points']
                                // ) 
                              ))
                          .toList(),
              
                    ),
                  ),
                  const Divider(),
                ],
              ),
            ),
          )
          // body: ListView.builder(
          //   itemCount: users.length,
          //   itemBuilder: (context, index) {
          //     return GestureDetector(
          //       child: Card(
          //         color: Color.fromARGB(255, 255, 255, 255),
          //         child: Padding(
          //             padding: const EdgeInsets.symmetric(
          //                 vertical: 24.0, horizontal: 16.0),
          //             child: Row(
          //               children: [
          //                 Padding(
          //                   padding: const EdgeInsets.only(left: 15, right: 20),
          //                   child: Text(users[index]["rank"]!),
          //                 ),
          //                 Image(
          //                     height: 46,
          //                     width: 46,
          //                     fit: BoxFit.cover,
          //                     image: AssetImage(users[index]["image"]!)),
          //                 const SizedBox(
          //                   width: 20,
          //                 ),
          //                 Padding(
          //                   padding: const EdgeInsets.only(left: 15, right: 90),
          //                   child: Text(users[index]["name"]!),
          //                 ),
          //                 Text(
          //                   users[index]["points"]!,
          //                   style: TextStyle(
          //                       fontSize: 16,
          //                       color: Color.fromRGBO(255, 140, 0, 1)),
          //                 ),
          //               ],
          //             )),
          //       ),
          //       onTap: () => onTap(users[index]),
          //     );
          //   },
          // ),

          ),
    );
  }
}
