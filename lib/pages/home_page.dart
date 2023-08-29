import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final user = FirebaseAuth.instance.currentUser!;

  //sign user out method
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  static var height, width;

  List imageList = [
    "images/mcqs.png",
    "images/quiz.png",
    "images/pastpapers.png",
    "images/pdf.png",
    "images/job.png",
    "images/about.png",
  ];

  List titles = [
    "MCQS",
    "QUIZ",
    "Papers",
    "PDF",
    "Jobs",
    "About",
  ];

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration:  const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(0, 150, 255, 1),
                Color.fromRGBO(210, 70, 255, 1),
              ],
            ),
          ),
          width: width,
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(),
                height: height * 0.23,
                width: width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 35,
                        left: 20,
                        // right: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: const Icon(
                              Icons.sort,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                          SizedBox(
                            height: 40,
                            width: 125,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.white,
                                    image: const DecorationImage(
                                      image: AssetImage("images/woman.png"),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: IconButton(
                                    onPressed: signUserOut,
                                    icon: const Icon(Icons.logout),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        left: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Dashboard",
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1,
                              )),
                          const SizedBox(
                            height: 10,
                          ),
                          Center(
                            child: Text(
                              "Welcome user " + user.email!, // this line is showiing error
                              style: const TextStyle(
                                fontSize: 20,color: Colors.white,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1,
                              ),

                            ),
                          ),
                          // Text(
                          //   "Last Update: 7 August 2023",
                          //   style: TextStyle(
                          //     fontSize: 16,
                          //     color: Colors.white54,
                          //     fontWeight: FontWeight.w500,
                          //     letterSpacing: 1,
                          //   ),
                          // ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      )),
                  // height: height,
                  width: width,
                  padding: const EdgeInsets.only(bottom: 20),
                  child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.1,
                      mainAxisSpacing: 25,
                    ),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: imageList.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {},
                        child: Container(
                          margin:
                              const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black26,
                                spreadRadius: 1,
                                blurRadius: 6,
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                imageList[index],
                                width: 100,
                              ),
                              Text(
                                titles[index],
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

// @override
// Widget build(BuildContext context){
//   return Scaffold(
//     appBar:AppBar(actions: [
//       IconButton(
//           onPressed: signUserOut,
//           icon: const Icon(Icons.logout)
//       )
//     ]),
//
//
//     body: Container(
//       //
//       // width: double.maxFinite,
//       // height: double.maxFinite,
//       // child: Center(
//       //     child: Text("Logged In as: "+user.email!,
//       //       style: const TextStyle(fontSize: 20),
//       //     )
//       // ),
//       //
//       // child: Dashboard(),
//       child: Stack(
//         // mainAxisAlignment: MainAxisAlignment.center,
//         // crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Text(
//             "Logged In as: " + user.email!,
//             style: const TextStyle(fontSize: 20),
//           ),
//         ],
//       ),
//     ),
//   );
//
// }
}
