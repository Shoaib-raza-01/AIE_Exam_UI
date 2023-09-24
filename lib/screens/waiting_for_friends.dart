import 'package:aie/components/Quiz_tic_tac_toe_container.dart';
import 'package:aie/components/start_quiz_container.dart';
import 'package:flutter/material.dart';


class WaitingForFriends extends StatelessWidget {
  const WaitingForFriends({super.key});

  @override
  Widget build(BuildContext context) {
    // for the section 'waiting for images'
    List<String> userImagePath = [
      'assets/images/f1.png',
      'assets/images/f1.png',
      'assets/images/f1.png',
      'assets/images/f1.png',
      'assets/images/f1.png',
      'assets/images/f1.png',
    ];

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
        title: const Text(
          'Waiting for users to join',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16.0,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            StartQuizContainer(userImagePath: userImagePath),
            const TicTacToe(),
          ],
        ),
      ),
    );
  }
}
