import 'package:aie/screens/android_large_five.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:slidable_button/slidable_button.dart';

class AndroidLargeTwo extends StatefulWidget {
  const AndroidLargeTwo({super.key});

  @override
  State<AndroidLargeTwo> createState() => _AndroidLargeTwoState();
}

class _AndroidLargeTwoState extends State<AndroidLargeTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: InkWell(
      //     onTap: () {
      //       Navigator.pop(context);
      //     },
      //     child: const Icon(
      //       Icons.arrow_back_ios_new_rounded,
      //       color: Color.fromRGBO(255, 189, 20, 1),
      //     ),
      //   ),
      // ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Stack(children: [
            Positioned(
              left: 20,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Color.fromRGBO(255, 189, 20, 1),
                ),
              ),
            ),
            SizedBox(
              height: 280,
              width: MediaQuery.of(context).size.width,
              child: const Align(
                  alignment: Alignment.bottomRight,
                  child: Image(
                    image: AssetImage('assets/images/yellow_block.png'),
                    height: 260,
                  )),
            ),
            SizedBox(
              height: 280,
              width: MediaQuery.of(context).size.width,
              child: const Align(
                  alignment: Alignment.bottomRight,
                  child: Image(image: AssetImage('assets/images/compass.png'))),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 250),
              child: Flexible(
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)),
                    color: Color.fromRGBO(73, 112, 251, 1),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30, top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text(
                              '12th',
                              style: TextStyle(
                                  fontSize: 14,
                                  // fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: 'Poppins'),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Container(
                                height: 20,
                                color: Colors.white,
                                width: 1,
                              ),
                            ),
                            const Text(
                              'Mathematics',
                              style: TextStyle(
                                  fontSize: 14,
                                  // fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: 'Poppins'),
                            )
                          ],
                        ),
                        const Text(
                          'Trigonometry',
                          style: TextStyle(
                              fontSize: 34,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontFamily: 'Poppins'),
                        ),
                        Container(
                          height: 1,
                          color: Colors.white,
                          width: 220,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 360,
                          child: DefaultTabController(
                            length: 3,
                            child: Column(
                              children: <Widget>[
                                ButtonsTabBar(
                                    height: 50,
                                    borderWidth: 1,
                                    radius: 25,
                                    contentPadding: const EdgeInsets.only(
                                        left: 30, right: 30),
                                    backgroundColor:
                                        const Color.fromRGBO(255, 189, 20, 1),
                                    unselectedBackgroundColor:
                                        const Color.fromRGBO(73, 112, 251, 1),
                                    unselectedLabelStyle:
                                        const TextStyle(color: Colors.white),
                                    labelStyle: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                    tabs: const [
                                      Tab(
                                        text: "Instructions",
                                      ),
                                      Tab(
                                        text: "Learning",
                                      ),
                                      Tab(
                                        text: 'Eligibility',
                                      ),
                                    ]),
                                Flexible(
                                  child: TabBarView(
                                    children: <Widget>[
                                      Column(
                                        children: [
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            child: const Row(
                                              children: [
                                                Icon(
                                                  Icons.file_copy_rounded,
                                                  color: Colors.white,
                                                ),
                                                Text(
                                                  '90 Questions',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                                SizedBox(
                                                  width: 120,
                                                ),
                                                Icon(
                                                  Icons.access_alarms_rounded,
                                                  color: Colors.white,
                                                ),
                                                Text(
                                                  '180 Minutes',
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white,
                                                      fontFamily: 'Poppins'),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                height: 10,
                                                width: 10,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6),
                                                    color: Colors.white),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              const Flexible(
                                                  child: Text(
                                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ))
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                height: 10,
                                                width: 10,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6),
                                                    color: Colors.white),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              const Flexible(
                                                  child: Text(
                                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ))
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                height: 10,
                                                width: 10,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6),
                                                    color: Colors.white),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              const Flexible(
                                                  child: Text(
                                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ))
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                height: 10,
                                                width: 10,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6),
                                                    color: Colors.white),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              const Flexible(
                                                  child: Text(
                                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ))
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                height: 10,
                                                width: 10,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6),
                                                    color: Colors.white),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              const Flexible(
                                                  child: Text(
                                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ))
                                            ],
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          const SizedBox(
                                            height: 25,
                                          ),
                                          RichText(
                                            text: const TextSpan(
                                              children: [
                                                TextSpan(
                                                    text: 'Law :   ',
                                                    style: TextStyle(
                                                        color: Color.fromRGBO(
                                                            255, 189, 20, 1),
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                TextSpan(
                                                    text:
                                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam condimentum, nunc nec venenatis euismod,',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 25,
                                          ),
                                          RichText(
                                            text: const TextSpan(
                                              children: [
                                                TextSpan(
                                                    text: 'Law :   ',
                                                    style: TextStyle(
                                                        color: Color.fromRGBO(
                                                            255, 189, 20, 1),
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                TextSpan(
                                                    text:
                                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam condimentum, nunc nec venenatis euismod,',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 25,
                                          ),
                                          RichText(
                                            text: const TextSpan(
                                              children: [
                                                TextSpan(
                                                    text: 'Law :   ',
                                                    style: TextStyle(
                                                        color: Color.fromRGBO(
                                                            255, 189, 20, 1),
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                TextSpan(
                                                    text:
                                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam condimentum, nunc nec venenatis euismod,',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                height: 10,
                                                width: 10,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6),
                                                    color: Colors.white),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              const Flexible(
                                                  child: Text(
                                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ))
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                height: 10,
                                                width: 10,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6),
                                                    color: Colors.white),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              const Flexible(
                                                  child: Text(
                                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ))
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                height: 10,
                                                width: 10,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6),
                                                    color: Colors.white),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              const Flexible(
                                                  child: Text(
                                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ))
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                height: 10,
                                                width: 10,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6),
                                                    color: Colors.white),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              const Flexible(
                                                  child: Text(
                                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ))
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                height: 10,
                                                width: 10,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6),
                                                    color: Colors.white),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              const Flexible(
                                                  child: Text(
                                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ))
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                height: 10,
                                                width: 10,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6),
                                                    color: Colors.white),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              const Flexible(
                                                  child: Text(
                                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ))
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: HorizontalSlidableButton(
                            width: 300,
                            height: 50,
                            buttonWidth: 50.0,
                            isRestart: true,
                            color: const Color.fromRGBO(255, 255, 255, 1),
                            buttonColor: const Color.fromRGBO(255, 189, 20, 1),
                            dismissible: true,
                            label: const Center(
                                child: Icon(Icons.arrow_forward_ios_rounded,
                                    color: Colors.white)),
                            child: const Center(
                              child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text('Slide to start exam')),
                            ),
                            onChanged: (position) {
                              setState(() {
                                if (position == SlidableButtonPosition.end) {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const AndroidLargeFive()));
                                } else {}
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
