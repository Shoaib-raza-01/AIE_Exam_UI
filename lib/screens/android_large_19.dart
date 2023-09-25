import 'package:aie/components/bar_chart.dart';
import 'package:aie/components/donut_chart.dart';
import 'package:aie/screens/result_with_friends.dart';
import 'package:flutter/material.dart';


class ResultScreen extends StatefulWidget {
  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  String _selectedItem = 'Item 1';
  bool isExpanded = false;

  List<DataModel> _list = List<DataModel>.empty(growable: true);

  @override
  void initState() {
    super.initState();
    _list.add(DataModel(key: "1", value: '17', isCorrect: false));
    _list.add(DataModel(key: "2", value: '13', isCorrect: false));
    _list.add(DataModel(key: "3", value: '23', isCorrect: true));
    _list.add(DataModel(key: "4", value: '28', isCorrect: false));
    _list.add(DataModel(key: "5", value: '11', isCorrect: true));
    _list.add(DataModel(key: "6", value: '27', isCorrect: true));
    _list.add(DataModel(key: "7", value: '12', isCorrect: false));
    _list.add(DataModel(key: "8", value: '29', isCorrect: true));
    _list.add(DataModel(key: "9", value: '24', isCorrect: false));
    _list.add(DataModel(key: "10", value: '18', isCorrect: true));
  }

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
        centerTitle: true,
        title: const Text(
          'Results',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              width: 120,
              margin: EdgeInsets.only(right: 20),
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(30)),
              child: DropdownButton<String>(
                value: _selectedItem,
                borderRadius: BorderRadius.circular(20),
                isExpanded: isExpanded,
                icon: RotatedBox(
                    quarterTurns: isExpanded ? -3 : -1,
                    child: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: Colors.white,
                    )),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedItem = newValue!;
                  });
                },
                dropdownColor:
                    Colors.blue, // Change the background color to white
                items: <String>[
                  'Item 1',
                  'Item 2',
                  'Item 3',
                  'Item 4',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Text(
                        value,
                        style: const TextStyle(
                            color: Colors.white), // Change text color to black
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 30, left: 15, right: 15, bottom: 20),
              child: Container(
                height: 310,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                    BoxShadow(
                      offset: Offset(1,2), 
                                   blurRadius: 3,
                    )
                  ],
                    borderRadius: BorderRadius.circular(20)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
                child: BarChartComponent(data: _list),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
             Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Average",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const ResultsWithFriends()));
                    },
                    child: Container(
                      height: 150,
                      width: 160,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                    BoxShadow(
                      offset: Offset(1,2), 
                                   blurRadius: 3,
                    )
                  ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child:  DonutChartComponent(result: 80, primaryColor: const Color.fromRGBO(255, 189, 20, 1),textColor: Colors.black,),
                            // child: const Stack(children: [
                            //   Image(
                            //       image:
                            //           AssetImage('assets/images/yellow.png')),
                            //   Align(
                            //     alignment: Alignment.center,
                            //     child: Text(
                            //       '80%',
                            //       style: TextStyle(
                            //           color: Colors.black,
                            //           fontSize: 24,
                            //           fontWeight: FontWeight.bold),
                            //     ),
                            //   )
                            // ]),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'Accuracy',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 150,
                    width: 160,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                    BoxShadow(
                      offset: Offset(1,2), 
                                   blurRadius: 3,
                    )
                  ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child:  DonutChartComponent(result: 80, primaryColor: const Color.fromRGBO(255, 189, 20, 1),textColor: Colors.black,),
                          // child: const Stack(children: [
                          //   Image(
                          //       image: AssetImage('assets/images/yellow.png')),
                          //   Align(
                          //     alignment: Alignment.center,
                          //     child: Text(
                          //       '80%',
                          //       style: TextStyle(
                          //           color: Colors.black,
                          //           fontSize: 24,
                          //           fontWeight: FontWeight.bold),
                          //     ),
                          //   )
                          // ]),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Time Efficiency',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DataModel {
  String key;
  String value;
  bool isCorrect;

  DataModel({required this.key, required this.value, required this.isCorrect});
}
