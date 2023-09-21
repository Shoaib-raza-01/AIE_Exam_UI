import 'package:accordion/accordion_section.dart';
import 'package:flutter/material.dart';

class AndroidLargeTwentyTwo extends StatefulWidget {
  const AndroidLargeTwentyTwo({super.key});

  @override
  State<AndroidLargeTwentyTwo> createState() => _AndroidLargeTwentyTwoState();
}

class _AndroidLargeTwentyTwoState extends State<AndroidLargeTwentyTwo> {
  bool toggle = false;
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
                    borderRadius: BorderRadius.circular(42)),
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
                      child: const Stack(children: [
                        Image(image: AssetImage('assets/images/circular.png')),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            '80%',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ]),
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
                    borderRadius: BorderRadius.circular(25)),
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
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
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
                                  child: const Stack(children: [
                                    Image(
                                        image: AssetImage(
                                            'assets/images/yellow.png')),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        '80%',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  ]),
                                ),
                                const Text(
                                  'Accuracy',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Text(
                                  "Lorem POsem Orsdjfg sdvfsdsjem POsem",
                                  style: TextStyle(
                                      color: Colors.black,
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
                                  child: const Stack(children: [
                                    Image(
                                        image: AssetImage(
                                            'assets/images/yellow.png')),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        '80%',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  ]),
                                ),
                                const Text(
                                  'Accuracy',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Text(
                                  "Lorem POsem Orsdjfg sdvfsdsjem POsem",
                                  style: TextStyle(
                                      color: Colors.black,
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
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color.fromRGBO(255, 218, 133, 1)),
                child: const Center(
                    child: Text(
                  'Check Ranking',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                )),
              ),
              const SizedBox(
                height: 20,
              ),
              // AccordionSection(
              //   isOpen: toggle,
              //   headerBorderRadius: 30,
              //   headerBackgroundColor: const Color.fromRGBO(223, 145, 251, 1),
              //   headerBackgroundColorOpened:
              //       const Color.fromRGBO(223, 145, 251, 1),
              //   headerBorderWidth: 2,
              //   contentBackgroundColor: const Color.fromRGBO(223, 145, 251, 1),
              //   contentBorderColor: Colors.white,
              //   contentBorderRadius: 30,
              //   rightIcon: Padding(
              //     padding: const EdgeInsets.only(right: 20, bottom: 13),
              //     child: RotatedBox(
              //         quarterTurns: toggle ? -3 : -1,
              //         child: InkWell(
              //           onTap: () {
              //     setState(() {
              //       toggle = !toggle;
              //     });
              //   },
              //           child: const Icon(
              //             Icons.arrow_back_ios,
              //             size: 30,
              //             color: Colors.white,
              //           ),
              //         )),
              //   ),
              //   contentVerticalPadding: 30,
              //   header: const Padding(
              //     padding: EdgeInsets.only(left: 15, top: 10, bottom: 10),
              //     child: Text('Suggestions',
              //         style: TextStyle(
              //             color: Colors.white,
              //             fontWeight: FontWeight.bold,
              //             fontSize: 24)),
              //   ),
              //   content: const Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       Flexible(
              //         child: Text(
              //           'slogan slogan slogan slogan slogan slogan slogan slogan slogan slogan slogan slogan slogan slogan slogan slogan slogan slogan ',
              //           maxLines: 4,
              //           style: TextStyle(color: Colors.white54, fontSize: 17),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),

              // Container(
              //   height: 60,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(34),
              //     color: const Color.fromRGBO(223, 145, 251, 1),
              //   ),
              //   child: Column(children: [
              //     ListTile(
              //       title: const Text("Suggestions",
              //           style: TextStyle(
              //               color: Colors.white,
              //               fontWeight: FontWeight.bold,
              //               fontSize: 24)),
              //       onTap: () {
              //         setState(() {
              //           toggle = !toggle;
              //         });
              //       },
              //       trailing: Padding(
              //         padding: const EdgeInsets.only(
              //           bottom: 10,
              //         ),
              //         child: RotatedBox(
              //             quarterTurns: toggle ? -3 : -1,
              //             child: const Icon(
              //               Icons.arrow_back_ios,
              //               size: 30,
              //               color: Colors.white,
              //             )),
              //       ),
              //     ),
              //     toggle
              //         ? Container(
              //           color: const Color.fromRGBO(223, 145, 251, 1),
              //           width: double.infinity,
              //             padding: const EdgeInsets.symmetric(
              //                 vertical: 70, horizontal: 15),
              //             child: Flexible(child: Text("whatever the content you want ", style: TextStyle(color: Colors.white),)),
              //           )
              //         : Container()
              //   ]),
              // ),

              ExpansionPanelList(
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
                            padding: EdgeInsets.all(8.0),
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
                        style: TextStyle(color: Colors.white54, fontSize: 17),
                      ),
                    ),
                    isExpanded: rotate,
                    canTapOnHeader: true,
                  ),
                ],
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
                ),
                child: Stack(
                  children: [
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Image(
                            image: AssetImage('assets/images/women.png'))),
                    Padding(
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
                              Text('|',style: TextStyle(
                              color: Colors.black, 
                              fontWeight: FontWeight.bold,
                              fontSize: 18)),
                              Text('12th',style: TextStyle(
                              color: Colors.black, 
                              fontWeight: FontWeight.bold,
                              fontSize: 18))
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 55, left: 15),
                      child: SizedBox(
                        width: 220,
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {}, 
                              child: Container(
                                height: 30,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                                color : Color.fromRGBO(73, 112, 251, 1)),
                                child: Padding(
                                  padding: const EdgeInsets.only(top:5,left: 15,right: 15),
                                  child: Text("Check",style: TextStyle(color: Colors.white),),
                                ))
                              ),
                              SizedBox(width: 15,),
                            InkWell(
                              onTap: () {}, 
                              child: Container(
                                height: 30,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                                color : Color.fromRGBO(73, 112, 251, 1)),
                                child: Padding(
                                  padding: const EdgeInsets.only(top:5,left: 15,right: 15),
                                  child: Text("Download",style: TextStyle(color: Colors.white),),
                                ))
                              ),
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