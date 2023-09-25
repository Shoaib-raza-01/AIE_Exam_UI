import 'package:aie/components/donut_chart.dart';
import 'package:aie/screens/android_large_19.dart';
import 'package:aie/screens/result_with_friends.dart';
import 'package:flutter/material.dart';

class AndroidLargeTwentyTwo extends StatefulWidget {
  const AndroidLargeTwentyTwo({super.key});

  @override
  State<AndroidLargeTwentyTwo> createState() => _AndroidLargeTwentyTwoState();
}

class _AndroidLargeTwentyTwoState extends State<AndroidLargeTwentyTwo> {
  bool rotate = false;
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
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 120,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(73, 112, 251, 1),
                    borderRadius: BorderRadius.circular(42),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(1, 2),
                        blurRadius: 3,
                      )
                    ]),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: DonutChartComponent(
                        result: 80,
                        primaryColor: Color.fromARGB(255, 34, 156, 255),
                        textColor: Colors.white,
                      ),
                      // child: const Stack(children: [
                      //   Image(image: AssetImage('assets/images/circular.png')),
                      //   Align(
                      //     alignment: Alignment.center,
                      //     child: Text(
                      //       '80%',
                      //       style: TextStyle(
                      //           color: Colors.white,
                      //           fontSize: 24,
                      //           fontWeight: FontWeight.bold),
                      //     ),
                      //   )
                      // ]),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: SizedBox(
                        height: 100,
                        width: 200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Well done!",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                            Flexible(
                                child: Text(
                              'lorem orem lorem lorem lore posem lorem posem ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20, bottom: 20),
                child: Text(
                  'Results',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(255, 218, 133, 1),
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(1, 2),
                        blurRadius: 3,
                      )
                    ]),
                child: Stack(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 15, right: 15),
                      child: Align(
                          alignment: AlignmentDirectional(1, -1),
                          child: Image(
                              image: AssetImage('assets/images/arrow.png'))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2.6,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  child: DonutChartComponent(
                                    result: 80,
                                    primaryColor:
                                        const Color.fromRGBO(255, 189, 20, 1),
                                    textColor: Colors.black,
                                  ),
                                  // child: const Stack(children: [
                                  //   Image(
                                  //       image: AssetImage(
                                  //           'assets/images/yellow.png')),
                                  //   Align(
                                  //     alignment: Alignment.center,
                                  //     child: Text(
                                  //       '80%',
                                  //       style: TextStyle(
                                  //           color: Colors.white,
                                  //           fontSize: 24,
                                  //           fontWeight: FontWeight.bold),
                                  //     ),
                                  //   )
                                  // ]),
                                ),
                                const Text(
                                  'Accuracy',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  "Lorem POsem Orsdjfg sdvfsdsjem POsem",
                                  style: TextStyle(
                                      color: Colors.black38,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2.6,
                            child: Column(
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  child: DonutChartComponent(
                                    result: 80,
                                    primaryColor:
                                        const Color.fromRGBO(255, 189, 20, 1),
                                    textColor: Colors.black,
                                  ),
                                  // child: const Stack(children: [
                                  //   Image(
                                  //       image: AssetImage(
                                  //           'assets/images/yellow.png')),
                                  //   Align(
                                  //     alignment: Alignment.center,
                                  //     child: Text(
                                  //       '80%',
                                  //       style: TextStyle(
                                  //           color: Colors.white,
                                  //           fontSize: 24,
                                  //           fontWeight: FontWeight.bold),
                                  //     ),
                                  //   )
                                  // ]),
                                ),
                                const Text(
                                  'Time Efficiency',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  "Lorem POsem Orsdjfg sdvfsdsjem POsem",
                                  style: TextStyle(
                                      color: Colors.black38,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ResultsWithFriends()));
                },
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color.fromRGBO(255, 218, 133, 1),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(1, 2),
                          blurRadius: 3,
                        )
                      ]),
                  child: const Center(
                      child: Text(
                    'Check Ranking',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(34),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(1, 2),
                        blurRadius: 3,
                      )
                    ]),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(34),
                  child: ExpansionPanelList(
                    expandIconColor: Colors.white,
                    expansionCallback: ((panelIndex, isExpanded) {
                      setState(() {
                        rotate = !rotate;
                      });
                    }),
                    children: [
                      ExpansionPanel(
                        backgroundColor: const Color.fromRGBO(223, 145, 251, 1),
                        headerBuilder: (context, isExpanded) {
                          return Padding(
                            padding: const EdgeInsets.all(0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(15.0),
                                child: Text("Suggestions",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24)),
                              ),
                            ),
                          );
                        },
                        body: const Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'slogan slogan slogan slogan slogan slogan slogan slogan slogan slogan slogan slogan slogan slogan slogan slogan slogan slogan ',
                            maxLines: 4,
                            style:
                                TextStyle(color: Colors.white54, fontSize: 17),
                          ),
                        ),
                        isExpanded: rotate,
                        canTapOnHeader: true,
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 40),
                child: Text(
                  'Sheet Details',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 110,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: const Color.fromRGBO(208, 177, 244, 1),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(1, 2),
                        blurRadius: 3,
                      )
                    ]),
                child: Stack(
                  children: [
                    const Align(
                        alignment: Alignment.bottomRight,
                        child: Image(
                            image: AssetImage('assets/images/women.png'))),
                    const Padding(
                      padding: EdgeInsets.only(top: 15, left: 15),
                      child: SizedBox(
                        width: 220,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Mathematics",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18)),
                            Text('|',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18)),
                            Text('12th',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18))
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 55, left: 15),
                      child: SizedBox(
                        width: 220,
                        child: Row(
                          children: [
                            InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          ResultScreen()));
                                },
                                child: Container(
                                    height: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: const Color.fromRGBO(
                                            73, 112, 251, 1)),
                                    child: const Padding(
                                      padding: EdgeInsets.only(
                                          top: 5, left: 15, right: 15),
                                      child: Text(
                                        "Check",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ))),
                            const SizedBox(
                              width: 15,
                            ),
                            InkWell(
                                onTap: () {},
                                child: Container(
                                    height: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: const Color.fromRGBO(
                                            73, 112, 251, 1)),
                                    child: const Padding(
                                      padding: EdgeInsets.only(
                                          top: 5, left: 15, right: 15),
                                      child: Text(
                                        "Download",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ))),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
