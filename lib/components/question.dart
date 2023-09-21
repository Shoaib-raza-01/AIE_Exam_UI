import 'package:flutter/material.dart';

class QuestionCard extends StatefulWidget {
  const QuestionCard({super.key});

  @override
  State<QuestionCard> createState() => _QuestionCardState();
}

class _QuestionCardState extends State<QuestionCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 520,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: const Color.fromRGBO(73, 112, 251, 1),
            borderRadius: BorderRadius.circular(42)),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Q1",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "00:00",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Lorem ipsum dolor sit amet, adak si consectetur adipiscing elit.",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20,),
              InkWell(
                onTap: () {
                  
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 15,right: 15),
                    child: Row(children: [
                      Text("A.",style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),),
                      SizedBox(width: 15,),
                      Text("Option one Will go here ",style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold
                      ),)
                    ]),
                  ),
                ),
              ),
              const SizedBox(height: 15,),
              InkWell(
                onTap: () {
                  
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 15,right: 15),
                    child: Row(children: [
                      Text("B.",style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),),
                      SizedBox(width: 15,),
                      Text("Option Two Will go here ",style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold
                      ),)
                    ]),
                  ),
                ),
              ),
              const SizedBox(height: 15,),
              InkWell(
                onTap: () {
                  
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 15,right: 15),
                    child: Row(children: [
                      Text("C.",style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),),
                      SizedBox(width: 15,),
                      Text("Option Three Will go here ",style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold
                      ),)
                    ]),
                  ),
                ),
              ),
              const SizedBox(height: 15,),
              InkWell(
                onTap: () {
                  
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 15,right: 15),
                    child: Row(children: [
                      Text("D.",style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),),
                      SizedBox(width: 15,),
                      Text("Option four Will go here ",style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold
                      ),)
                    ]),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
