import 'package:aie/components/question.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';

class AndroidLargeFive extends StatefulWidget {
  const AndroidLargeFive({super.key});

  @override
  State<AndroidLargeFive> createState() => _AndroidLargeFiveState();
}

class _AndroidLargeFiveState extends State<AndroidLargeFive>
    with TickerProviderStateMixin {
  late TabController _tabController;
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 10, vsync: this);

    _tabController.addListener(() {
      setState(() {
        selectedIndex = _tabController.index;
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 8),
          child: SizedBox(
            height: 100,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: Color.fromRGBO(255, 189, 20, 1),
                    ),
                  ),
                  const Text(
                    '00:00',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                          height: 30,
                          width: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: Color.fromRGBO(73, 112, 251, 1)),
                          child: Center(
                            child: Text(
                              "Submit",
                              style: TextStyle(color: Colors.white),
                            ),
                          )))
                ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: SizedBox(
            height: 600,
            child: DefaultTabController(
              length: 10,
              child: Column(
                children: <Widget>[
                  ButtonsTabBar(
                      controller: _tabController,
                      height: 45,
                      radius: 30,
                      borderWidth: 0.2,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 189, 20, 1),
                      ),
                      contentPadding:
                          const EdgeInsets.only(left: 20, right: 20),
                      unselectedBackgroundColor:
                          const Color.fromARGB(255, 255, 255, 255),
                      unselectedLabelStyle:
                          const TextStyle(color: Colors.black),
                      labelStyle: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                      tabs: const [
                        Tab(
                          text: '1',
                        ),
                        Tab(
                          text: '2',
                        ),
                        Tab(
                          text: '3',
                        ),
                        Tab(
                          text: '4',
                        ),
                        Tab(
                          text: '5',
                        ),
                        Tab(
                          text: '6',
                        ),
                        Tab(
                          text: '7',
                        ),
                        Tab(
                          text: '8',
                        ),
                        Tab(
                          text: '9',
                        ),
                        Tab(
                          text: '10',
                        ),
                      ]),
                  const SizedBox(
                    height: 30,
                  ),
                  Flexible(
                      child: TabBarView(
                    controller: _tabController,
                    children: [
                      QuestionCard(),
                      QuestionCard(),
                      QuestionCard(),
                      QuestionCard(),
                      QuestionCard(),
                      QuestionCard(),
                      QuestionCard(),
                      QuestionCard(),
                      QuestionCard(),
                      QuestionCard(),
                    ],
                  )),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 30,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 40,
              width: 160,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.amber, width: 2),
                borderRadius: BorderRadius.circular(20),
              ),
              child: InkWell(
                  onTap: () {
                    if (selectedIndex != 0) {
                      _tabController.animateTo(
                        selectedIndex -= 1,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.ease,
                      );
                    } else {
                      print('end');
                    }
                  },
                  child: Center(child: Text("Previous"))),
            ),
            SizedBox(
              height: 40,
              width: 160,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                      foregroundColor: Colors.white),
                  onPressed: () {
                    if (selectedIndex != 9) {
                      _tabController.animateTo(
                        selectedIndex += 1,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.ease,
                      );
                    } else {
                      print("done");
                    }
                  },
                  child: Text("Next")),
            )
          ],
        )
      ]),
    );
  }
}
