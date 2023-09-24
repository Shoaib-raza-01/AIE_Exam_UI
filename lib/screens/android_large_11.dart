import 'package:aie/screens/waiting_for_friends.dart';
import 'package:flutter/material.dart';

class Androidlarge11 extends StatefulWidget {
  const Androidlarge11({super.key});

  @override
  State<Androidlarge11> createState() => _Androidlarge11State();
}

class _Androidlarge11State extends State<Androidlarge11> {
  final List<String> userImagePath = [
    'assets/images/image.png',
    'assets/images/image.png',
    'assets/images/image.png',
    'assets/images/f1.png',
    'assets/images/image.png',
    'assets/images/image.png'
  ];
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
        body: Padding(
          padding:
              const EdgeInsets.only(left: 25, right: 25, top: 20, bottom: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 90,
              width: MediaQuery.of(context).size.width,
              child: Stack(children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xFF4970FB),
                    ),
                  ),
                ),
                const Positioned(
                  top: 42,
                  left: 70,
                  child: SizedBox(
                    width: 96,
                    height: 28,
                    child: Text(
                      'Compete',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w700,
                        height: 0.04,
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  top: 68,
                  left: 40,
                  child: Text(
                    'Lorem posem Loeem poaem ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Lato',
                      // fontWeight: FontWeight.w700,
                      height: 0.04,
                    ),
                  ),
                ),
                Align(
                    alignment: Alignment.bottomRight,
                    child: Image(
                      image: AssetImage('assets/images/image.png'),
                    )),
              ]),
            ),
            SizedBox(
              height: 60,
            ),
            Text(
              'Classmates',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Lato',
                fontWeight: FontWeight.w700,
                height: 0.04,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Divider(
                color: Colors.black,
                height: 1,
                thickness: 3,
                indent: 1,
              ),
            ),
            SizedBox(
              height: 400,
              child: GridView.builder(
                shrinkWrap: true,
                // padding: EdgeInsets.only(),
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                ),
                itemCount: userImagePath.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 45,
                    width: 41,
                    
                    margin: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(15),),
                        child:  Image(
                    image: AssetImage(userImagePath[index]),
                  ),
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              width: 300,
              height: 50, // Set the width you desire
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) =>
                          const WaitingForFriends()));
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                  backgroundColor: Color.fromRGBO(254, 196, 51, 1),
                ),
                child: const Text('Send Invite'),
              ),
            ),
          ]),
        ));
  }
}

// Padding(
//         padding: const EdgeInsets.all(15),
//         child: Column(
//           children: [
//             Expanded(
//               child: Container(
//                 decoration: const BoxDecoration(color: Colors.white),
//                 child: Stack(
//                   children: [
//                     const Positioned(
//                       left: 16,
//                       top: 33,
//                       child: SizedBox(
//                         width: 36,
//                         height: 36,
//                         child: Stack(children: [
//                           // ,
//                         ]),
//                       ),
//                     ),
//                     Positioned(
//                       left: 20,
//                       top: 104,
//                       child: Container(
//                         width: 320,
//                         height: 68,
//                         decoration: ShapeDecoration(
//                           color: const Color(0xFF4970FB),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(24),
//                           ),
//                         ),
//                       ),
//                     ),
//                     const Positioned(
//                       left: 58,
//                       top: 135,
//                       child: SizedBox(
//                         width: 96,
//                         height: 28,
//                         child: Text(
//                           'Compete',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 20,
//                             fontFamily: 'Lato',
//                             fontWeight: FontWeight.w700,
//                             height: 0.04,
//                           ),
//                         ),
//                       ),
//                     ),
//                     const Positioned(
//                       left: 44,
//                       top: 152,
//                       child: SizedBox(
//                         width: 126,
//                         height: 22,
//                         child: Text(
//                           'Lorem ipsum dolor sit amet,',
//                           style: TextStyle(
//                             color: Color(0xFFE6E6E6),
//                             fontSize: 10,
//                             fontFamily: 'Lato',
//                             fontWeight: FontWeight.w700,
//                             height: 0.15,
//                           ),
//                         ),
//                       ),
//                     ),
//                     const Positioned(
//                       left: 32,
//                       top: 220,
//                       child: SizedBox(
//                         width: 101,
//                         height: 28,
//                         child: Text(
//                           'Classmates',
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 20,
//                             // fontFamily: 'Lato',
//                             fontWeight: FontWeight.w800,
//                             height: 0.04,
//                           ),
//                         ),
//                       ),
//                     ),
//                     Positioned(
//                       left: 22,
//                       top: 242,
//                       child: Container(
//                         width: 318,
//                         decoration: const ShapeDecoration(
//                           shape: RoundedRectangleBorder(
//                             side: BorderSide(
//                               width: 1,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Positioned(
//                       left: 207,
//                       top: 77,
//                       child: Container(
//                         width: 111,
//                         height: 95,
//                         decoration: const BoxDecoration(
//                           image: DecorationImage(
//                             image: AssetImage('assets/images/image.png'),
//                             fit: BoxFit.fill,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
            
//           ],
//         ),
//       ),
   
// class Androidlarge11 extends StatelessWidget {
// Androidlarge11({super.key});
// final List<String> userImagePath = [];

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(20.0),
//       child: Column(
//         children: [
//           Expanded(
//             child: Container(
//               decoration: const BoxDecoration(color: Colors.white),
//               child: Stack(
//                 children: [
//                   const Positioned(
//                     left: 16,
//                     top: 33,
//                     child: SizedBox(
//                       width: 36,
//                       height: 36,
//                       child: Stack(children: [
//                         // ,
//                       ]),
//                     ),
//                   ),
//                   Positioned(
//                     left: 20,
//                     top: 104,
//                     child: Container(
//                       width: 320,
//                       height: 68,
//                       decoration: ShapeDecoration(
//                         color: const Color(0xFF4970FB),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(24),
//                         ),
//                       ),
//                     ),
//                   ),
//                   const Positioned(
//                     left: 58,
//                     top: 135,
//                     child: SizedBox(
//                       width: 96,
//                       height: 28,
//                       child: Text(
//                         'Compete',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 20,
//                           fontFamily: 'Lato',
//                           fontWeight: FontWeight.w700,
//                           height: 0.04,
//                         ),
//                       ),
//                     ),
//                   ),
//                   const Positioned(
//                     left: 44,
//                     top: 152,
//                     child: SizedBox(
//                       width: 126,
//                       height: 22,
//                       child: Text(
//                         'Lorem ipsum dolor sit amet,',
//                         style: TextStyle(
//                           color: Color(0xFFE6E6E6),
//                           fontSize: 10,
//                           fontFamily: 'Lato',
//                           fontWeight: FontWeight.w700,
//                           height: 0.15,
//                         ),
//                       ),
//                     ),
//                   ),
//                   const Positioned(
//                     left: 32,
//                     top: 220,
//                     child: SizedBox(
//                       width: 101,
//                       height: 28,
//                       child: Text(
//                         'Classmates',
//                         style: TextStyle(
//                           color: Colors.black,
//                           fontSize: 20,
//                           // fontFamily: 'Lato',
//                           fontWeight: FontWeight.w800,
//                           height: 0.04,
//                         ),
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     left: 22,
//                     top: 242,
//                     child: Container(
//                       width: 318,
//                       decoration: const ShapeDecoration(
//                         shape: RoundedRectangleBorder(
//                           side: BorderSide(
//                             width: 1,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     left: 207,
//                     top: 77,
//                     child: Container(
//                       width: 111,
//                       height: 95,
//                       decoration: const BoxDecoration(
//                         image: DecorationImage(
//                           image: AssetImage('assets/images/image.png'),
//                           fit: BoxFit.fill,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Expanded(
//             child: GridView.builder(
//               shrinkWrap: true,
//               physics: const NeverScrollableScrollPhysics(),
//               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 4,
//               ),
//               itemCount: userImagePath.length,
//               itemBuilder: (context, index) {
//                 return Image(
//                   image: AssetImage(userImagePath[index]),
//                 );
//               },
//             ),
//           ),
//           SizedBox(
//             width: 300,
//             height: 50, // Set the width you desire
//             child: ElevatedButton(
//               onPressed: () {
//                 Navigator.of(context).push(MaterialPageRoute(
//                     builder: (BuildContext context) =>
//                         const WaitingForFriends()));
//               },
//               style: ElevatedButton.styleFrom(
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(100.0),
//                 ),
//                 backgroundColor: AppColor.kPrimaryColor,
//               ),
//               child: const Text('Send Invite'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class AndroidLarge11App extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: AndroidLarge11(),
//       ),
//     );
//   }
// }

// class AndroidLarge11 extends StatelessWidget {
//   AndroidLarge11({super.key});
//   final List<String> userImagePath = [];

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(20.0),
//       child: Column(
//         children: [
//           Expanded(
//             child: Container(
//               decoration: const BoxDecoration(color: Colors.white),
//               child: Stack(
//                 children: [
//                   Positioned(
//                     left: 16,
//                     top: 33,
//                     child: Container(
//                       width: 36,
//                       height: 36,
//                       child: const Stack(children: [
//                         // ,
//                       ]),
//                     ),
//                   ),
//                   Positioned(
//                     left: 20,
//                     top: 104,
//                     child: Container(
//                       width: 320,
//                       height: 68,
//                       decoration: ShapeDecoration(
//                         color: const Color(0xFF4970FB),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(24),
//                         ),
//                       ),
//                     ),
//                   ),
//                   const Positioned(
//                     left: 58,
//                     top: 135,
//                     child: SizedBox(
//                       width: 96,
//                       height: 28,
//                       child: Text(
//                         'Compete',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 20,
//                           fontFamily: 'Lato',
//                           fontWeight: FontWeight.w700,
//                           height: 0.04,
//                         ),
//                       ),
//                     ),
//                   ),
//                   const Positioned(
//                     left: 44,
//                     top: 152,
//                     child: SizedBox(
//                       width: 126,
//                       height: 22,
//                       child: Text(
//                         'Lorem ipsum dolor sit amet,',
//                         style: TextStyle(
//                           color: Color(0xFFE6E6E6),
//                           fontSize: 10,
//                           fontFamily: 'Lato',
//                           fontWeight: FontWeight.w700,
//                           height: 0.15,
//                         ),
//                       ),
//                     ),
//                   ),
//                   const Positioned(
//                     left: 32,
//                     top: 220,
//                     child: SizedBox(
//                       width: 101,
//                       height: 28,
//                       child: Text(
//                         'Classmates',
//                         style: TextStyle(
//                           color: Colors.black,
//                           fontSize: 20,
//                           // fontFamily: 'Lato',
//                           fontWeight: FontWeight.w800,
//                           height: 0.04,
//                         ),
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     left: 22,
//                     top: 242,
//                     child: Container(
//                       width: 318,
//                       decoration: const ShapeDecoration(
//                         shape: RoundedRectangleBorder(
//                           side: BorderSide(
//                             width: 1,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     left: 207,
//                     top: 77,
//                     child: Container(
//                       width: 111,
//                       height: 95,
//                       decoration: const BoxDecoration(
//                         image: DecorationImage(
//                           image: AssetImage('assets/images/image.png'),
//                           fit: BoxFit.fill,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Expanded(
//             child: GridView.builder(
//               shrinkWrap: true,
//               physics: const NeverScrollableScrollPhysics(),
//               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 4,
//               ),
//               itemCount: userImagePath.length,
//               itemBuilder: (context, index) {
//                 return Image(
//                   image: AssetImage(userImagePath[index]),
//                 );
//               },
//             ),
//           ),
//           SizedBox(
//             width: 300,
//             height: 50, // Set the width you desire
//             child: ElevatedButton(
//               onPressed: () {
//                 Navigator.of(context).push(MaterialPageRoute(
//                     builder: (BuildContext context) =>
//                         const WaitingForFriends()));
//               },
//               style: ElevatedButton.styleFrom(
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(100.0),
//                 ),
//                 backgroundColor: AppColor.kPrimaryColor,
//               ),
//               child: const Text('Send Invite'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
