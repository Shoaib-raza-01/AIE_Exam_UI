import 'package:aie/screens/android_large_7.dart';
import 'package:flutter/material.dart';

class StartQuizContainer extends StatelessWidget {
  const StartQuizContainer({
    super.key,
    required this.userImagePath,
  });

  final List<String> userImagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      padding: const EdgeInsets.all(10.0).copyWith(bottom: 20, top: 0),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(24.0),
          bottomRight: Radius.circular(24.0),
        ),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
            ),
            itemCount: userImagePath.length,
            itemBuilder: (context, index) {
              return Image(
                image: AssetImage(userImagePath[index]),
              );
            },
          ),
          SizedBox(
            height :55,
            width: 155,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) =>
                        const AndroidLargeSeven()));
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100.0),
                ),
                foregroundColor: Colors.white,
                backgroundColor: Color.fromRGBO(254, 196, 51, 1),
              ),
              child: const Text('Start Exam',style: TextStyle(fontSize: 18),),
            ),
          ),
        ],
      ),
    );
  }
}
