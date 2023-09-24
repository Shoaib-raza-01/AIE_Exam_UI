import 'package:aie/screens/android_large_2.dart';
import 'package:flutter/material.dart';

class ExamCardWidget extends StatefulWidget {
  final Color cardColor;
  final Color textColor;
  final Color iconColor;
  const ExamCardWidget({super.key, required this.cardColor, required this.textColor, required this.iconColor});

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
            color: widget.cardColor,
            borderRadius: BorderRadius.circular(32),
            boxShadow: const [
              BoxShadow(
                offset: Offset(1, 2),
                blurRadius: 3,
              )
            ]),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 40, right: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Text(
                  "Mathematics",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: widget.textColor,
                      fontFamily: 'Poppins'),
                ),
                Container(
                  height: 25,
                  color: widget.textColor,
                  width: 5,
                ),
                 Text(
                  '12',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: widget.textColor,
                      fontFamily: 'Poppins'),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 40, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Text(
                  "Trigonometry",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: widget.textColor,
                      fontFamily: 'Poppins'),
                ),
                Container(
                  height: 20,
                  color: widget.textColor,
                  width: 3,
                ),
                 Text(
                  'Beginner',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: widget.textColor,
                      fontFamily: 'Poppins'),
                ),
                 Icon(
                  Icons.share,
                  color: widget.textColor,
                  size: 30,
                  shadows: [
                    const BoxShadow(offset: Offset(2, 7), color: Colors.black12)
                  ],
                )
              ],
            ),
          ),
           Padding(
            padding: const EdgeInsets.only(
              top: 20,
              left: 40,
            ),
            child: Row(
              children: [
                const Image(
                  image: AssetImage('assets/images/ques_w_icon.png'),
                  height: 24,
                ),
                const SizedBox(
                  width: 3,
                ),
                // Icon(
                //   Icons.file_copy_rounded,
                //   color: widget.textColor,
                // ),
                const Text(
                  '90 Questions',
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.access_alarms_rounded,
                  color: widget.textColor,
                ),
                Text(
                  '180 Minutes',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: widget.textColor,
                      fontFamily: 'Poppins'),
                ),
                const SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.bookmark,
                  color: widget.textColor,
                  size: 30,
                  shadows: [
                    const BoxShadow(offset: Offset(2, 7), color: Colors.black12)
                  ],
                )
              ],
            ),
          ),
           Padding(
            padding: const EdgeInsets.only(left: 30, top: 20),
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
                const Image(image: AssetImage('assets/images/people.png')),
                const SizedBox(
                  width: 10,
                ),
                Text('and many others have finished the exam',
                    style: TextStyle(
                      fontSize: 12,
                      color: widget.textColor,
                    ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
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
    );
  }
}
