import 'package:aie/screens/android_large_2.dart';
import 'package:flutter/material.dart';

class ExamCardWidget extends StatefulWidget {
  const ExamCardWidget({super.key});

  @override
  State<ExamCardWidget> createState() => _ExamCardWidgetState();
}

class _ExamCardWidgetState extends State<ExamCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                height: 280,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(73, 112, 251, 1),
                  borderRadius: BorderRadius.circular(32),
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(1,2), 
                                   blurRadius: 3,
                    )
                  ]
                ),
                child: Column(children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 40, right: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Mathematics",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontFamily: 'Poppins'),
                        ),
                        Container(
                          height: 25,
                          color: Colors.white,
                          width: 5,
                        ),
                        const Text(
                          '12',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontFamily: 'Poppins'),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 40, right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Trigonometry",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontFamily: 'Poppins'),
                        ),
                        Container(
                          height: 20,
                          color: Colors.white,
                          width: 3,
                        ),
                        const Text(
                          'Beginner',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontFamily: 'Poppins'),
                        ),
                        const Icon(
                          Icons.share,
                          color: Colors.white,
                          size: 30,
                          shadows: [
                            BoxShadow(
                                offset: Offset(2, 7), color: Colors.black12)
                          ],
                        )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 20,
                      left: 40,
                    ),
                    child: Row(
                      children: [
                        Image(image: AssetImage('assets/images/ques_w_icon.png'),
                        height: 24,),
                        SizedBox(width: 3,),
                        // Icon(
                        //   Icons.file_copy_rounded,
                        //   color: Colors.white,
                        // ),
                        Text(
                          '90 Questions',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.access_alarms_rounded,
                          color: Colors.white,
                        ),
                        Text(
                          '180 Minutes',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontFamily: 'Poppins'),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.bookmark,
                          color: Colors.white,
                          size: 30,
                          shadows: [
                            BoxShadow(
                                offset: Offset(2, 7), color: Colors.black12)
                          ],
                        )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 30, top: 20),
                    child: Row(
                      children: [
                        // Stack(children: [
                        //   SizedBox(
                        //       height: 40,
                        //       width: 40,
                        //       child: Image(
                        //           image:
                        //               AssetImage('assets/images/profile_pic.png')))
                        // ]),
                        Image(image: AssetImage('assets/images/people.png')),
                        SizedBox(
                          width: 10,
                        ),
                        Text('and many others have finished the exam',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ))
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 30, right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 130,
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        const AndroidLargeTwo()));
                              },
                              child: const Text('Start',
                                  style: TextStyle(color: Colors.black))),
                        ),
                        SizedBox(
                          width: 130,
                          child: ElevatedButton(
                              onPressed: () {},
                              child: const Text('Complete',
                                  style: TextStyle(color: Colors.black))),
                        )
                      ],
                    ),
                  ),
                ]),
              ),
            )
            ;
  }
}