import 'package:aie/screens/exam_large_2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Color.fromRGBO(255, 189, 20, 1),
          ),
        ),
        title: const Center(
            child: Text(
          'Category',
          style: TextStyle(fontWeight: FontWeight.w400, fontFamily: 'Poppins'),
        )),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                height: 55,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromRGBO(244, 244, 245, 1)),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15, right: 10),
                      child: Icon(
                        Icons.search_rounded,
                        size: 35,
                        color: Color.fromRGBO(112, 112, 112, 1),
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Search', border: InputBorder.none),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                'Exams',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                height: 280,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(73, 112, 251, 1),
                  borderRadius: BorderRadius.circular(32),
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
                        // Image(image: AssetImage('assets/images/question_num.png'),
                        // height: 24,),
                        Icon(
                          Icons.file_copy_rounded,
                          color: Colors.white,
                        ),
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
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 30,
                right: 30,
              ),
              child: Container(
                height: 280,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 227, 233, 255),
                  borderRadius: BorderRadius.circular(32),
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
                              color: Colors.black,
                              fontFamily: 'Poppins'),
                        ),
                        Container(
                          height: 25,
                          color: Colors.black,
                          width: 5,
                        ),
                        const Text(
                          '12',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
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
                              color: Colors.black,
                              fontFamily: 'Poppins'),
                        ),
                        Container(
                          height: 20,
                          color: Colors.black,
                          width: 3,
                        ),
                        const Text(
                          'Beginner',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontFamily: 'Poppins'),
                        ),
                        Icon(
                          Icons.share,
                          color: Colors.blue.shade700,
                          size: 30,
                          shadows: [
                            BoxShadow(
                                offset: Offset(2, 7), color: Colors.black12)
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 20,
                      left: 40,
                    ),
                    child: Row(
                      children: [
                        // Image(image: AssetImage('assets/images/question_num.png'),
                        // height: 24,),
                        Icon(
                          Icons.file_copy_rounded,
                          color: Colors.black,
                        ),
                        Text(
                          '90 Questions',
                          style: TextStyle(color: Colors.black),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.access_alarms_rounded,
                          color: Colors.black,
                        ),
                        Text(
                          '180 Minutes',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontFamily: 'Poppins'),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.bookmark,
                          color: Colors.blue.shade700,
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
                              color: Colors.black,
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
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue.shade700,
                                  foregroundColor: Colors.black),
                              onPressed: () {},
                              child: const Text('Start')),
                        ),
                        SizedBox(
                          width: 130,
                          child: ElevatedButton(
                              onPressed: () {},
                              child: const Text(
                                'Complete',
                                style: TextStyle(color: Colors.black),
                              )),
                        )
                      ],
                    ),
                  ),
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 30, right: 30, top: 30, bottom: 20),
              child: Container(
                height: 280,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 227, 233, 255),
                  borderRadius: BorderRadius.circular(32),
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
                              color: Colors.black,
                              fontFamily: 'Poppins'),
                        ),
                        Container(
                          height: 25,
                          color: Colors.black,
                          width: 5,
                        ),
                        const Text(
                          '12',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
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
                              color: Colors.black,
                              fontFamily: 'Poppins'),
                        ),
                        Container(
                          height: 20,
                          color: Colors.black,
                          width: 3,
                        ),
                        const Text(
                          'Beginner',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontFamily: 'Poppins'),
                        ),
                        Icon(
                          Icons.share,
                          color: Colors.blue.shade700,
                          size: 30,
                          shadows: [
                            BoxShadow(
                                offset: Offset(2, 7), color: Colors.black12)
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 20,
                      left: 40,
                    ),
                    child: Row(
                      children: [
                        // Image(image: AssetImage('assets/images/question_num.png'),
                        // height: 24,),
                        Icon(
                          Icons.file_copy_rounded,
                          color: Colors.black,
                        ),
                        Text(
                          '90 Questions',
                          style: TextStyle(color: Colors.black),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.access_alarms_rounded,
                          color: Colors.black,
                        ),
                        Text(
                          '180 Minutes',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontFamily: 'Poppins'),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.bookmark,
                          color: Colors.blue.shade700,
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
                              color: Colors.black,
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
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue.shade700,
                                  foregroundColor: Colors.black),
                              onPressed: () {},
                              child: const Text('Start')),
                        ),
                        SizedBox(
                          width: 130,
                          child: ElevatedButton(
                              onPressed: () {},
                              child: const Text(
                                'Complete',
                                style: TextStyle(color: Colors.black),
                              )),
                        )
                      ],
                    ),
                  ),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
