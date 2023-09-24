// import 'package:flutter/material.dart';

// class QuizTicTacToeContainer extends StatelessWidget {
//   const QuizTicTacToeContainer({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.spaceAround,
//       children: [
//         const SizedBox(height: 10.0),
//         const Text('You lose'),
//         const SizedBox(height: 10.0),
//         Stack(
//           children: [
//             const Image(
//               image: AssetImage(
//                 'assets/images/people.png',
//               ),
//               colorBlendMode: BlendMode.colorBurn,
//             ),
//             Positioned(
//               top: MediaQuery.of(context).size.width * 0.25,
//               left: MediaQuery.of(context).size.width * 0.15,
//               child: FloatingActionButton.extended(
//                 // isExtended: true,
//                 icon: Icon(
//                   Icons.replay,
//                   color: Colors.blue
//                 ),
//                 backgroundColor: Colors.white,
//                 onPressed: () {
//                   print('Play again');
//                 },
//                 label: Text(
//                   'Play again',
//                   style: TextStyle(
//                     color: Colors.grey
//                   ),
//                 ),
//               ),
//             )
//           ],
//         )
//       ],
//     );
//   }
// }
import 'package:flutter/material.dart';

class TicTacToe extends StatefulWidget {
  const TicTacToe({super.key});

  @override
  State<TicTacToe> createState() => _TicTacToeState();
}

class _TicTacToeState extends State<TicTacToe> {
  // Create a 3x3 board
  // Each cell will be represented by a string
  List<List<String>> _board = [
    ['', '', ''],
    ['', '', ''],
    ['', '', ''],
  ];

  // Keep track of the current player (a player can be 'X' or 'O')
  String _player = 'X';
  String _result = '';

  // Make a move
  // This function will be called when a player taps on a cell
  void _play(int row, int col) {
    if (_board[row][col] == '') {
      setState(() {
        _board[row][col] = _player;
        _checkWin();
        if (_result == '') {
          _player = _player == 'X' ? 'O' : 'X';
        }
      });
    }
  }

  // Check if there is a winner
  // This function will be called after every move
  void _checkWin() {
    for (int i = 0; i < 3; i++) {
      if (_board[i][0] == _board[i][1] &&
          _board[i][1] == _board[i][2] &&
          _board[i][0] != '') {
        _result = '${_board[i][0]} wins!';
        return;
      }
      if (_board[0][i] == _board[1][i] &&
          _board[1][i] == _board[2][i] &&
          _board[0][i] != '') {
        _result = '${_board[0][i]} wins!';
        return;
      }
    }
    if (_board[0][0] == _board[1][1] &&
        _board[1][1] == _board[2][2] &&
        _board[0][0] != '') {
      _result = '${_board[0][0]} wins!';
      return;
    }
    if (_board[0][2] == _board[1][1] &&
        _board[1][1] == _board[2][0] &&
        _board[0][2] != '') {
      _result = '${_board[0][2]} wins!';
      return;
    }
    for (int i = 0; i < 3; i++) {
      for (int j = 0; j < 3; j++) {
        if (_board[i][j] == '') {
          return;
        }
      }
    }
    _result = 'Draw!';
  }

  // Reset the game
  // This function will be called when the reset button is pressed
  void _reset() {
    setState(() {
      _board = [
        ['', '', ''],
        ['', '', ''],
        ['', '', ''],
      ];
      _player = 'X';
      _result = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 80,right: 80),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () => _reset(),
                child: const Text("Reset",style: TextStyle(color: Colors.blue, fontSize: 16),),
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  _result,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: _result == '' ? Colors.transparent : Colors.green,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 210, 210, 210)),
          height: 250,
          width: 250,
          child: Stack(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Draw the board
              SizedBox(
                height: 250,
                width: 250,
                child: GridView.builder(
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(10.0),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1.0,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                  ),
                  itemCount: 9,
                  itemBuilder: (context, index) {
                    int row = index ~/ 3;
                    int col = index % 3;
                    return GestureDetector(
                      onTap: () => _play(row, col),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 0.2,
                          ),
                          borderRadius: BorderRadius.circular(10),
                          color: _board[row][col] == 'X'
                              ? const Color.fromARGB(255, 184, 184, 184)
                              : _board[row][col] == 'O'
                                  ? const Color.fromARGB(255, 184, 184, 184)
                                  : Color.fromARGB(255, 184, 184, 184),
                        ),
                        child: Center(
                          child: Text(
                            _board[row][col],
                            style: const TextStyle(
                              fontSize: 40.0,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),

              // // Display the current player
              // Container(
              //   padding: const EdgeInsets.all(20.0),
              //   child: Text(
              //     'Player $_player turn',
              //     style: const TextStyle(
              //       fontSize: 32,
              //       fontWeight: FontWeight.bold,
              //     ),
              //   ),
              // ),

              // // Display the result
              // Align(
              //   alignment: Alignment.bottomCenter,
              //   child: Container(
              //     padding: const EdgeInsets.all(10.0),
              //     child: Text(
              //       _result,
              //       style: TextStyle(
              //         fontSize: 32,
              //         fontWeight: FontWeight.bold,
              //         color: _result == '' ? Colors.transparent : Colors.green,
              //       ),
              //     ),
              //   ),
              // ),

              // Reset button
              // Align(
              //   alignment: Alignment.center,
              //   child: Container(
              //     padding: const EdgeInsets.all(10.0),
              //     child: ElevatedButton(
              //       onPressed: _reset,
              //       child: const Text(
              //         'Reset',
              //         style: TextStyle(
              //           fontSize: 20.0,
              //           fontWeight: FontWeight.bold,
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ],
    );
  }
}
